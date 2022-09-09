// Determine which branch the proper agent will execute
def agentLabel
if ( env.BRANCH_NAME == 'main') {
  agentLabel = 'prod'
} else if ( env.BRANCH_NAME == 'staging') {
  agentLabel = 'stg'
} else if ( env.BRANCH_NAME == 'dev') {
  agentLabel = 'dev'
} else {
// if not part of dev, release, or prod we are not going through the pipeline
  agentLabel = 'test'
}

pipeline {
  agent {
    label agentLabel
    }
  // check for changes every 5 minutes
  triggers {
        pollSCM 'H/5 * * * *'
    }
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'));
    timestamps();
    disableConcurrentBuilds();
    office365ConnectorWebhooks([
       [name: "karate-testing", url: "https://usepa.webhook.office.com/webhookb2/52666a1b-6ebc-415a-8066-05f621f63b23@88b378b3-6748-4867-acf9-76aacbeca6a7/IncomingWebhook/ae355b01a615454d9a2fe71a7e010544/48636d5a-2386-4753-ba37-3e8816a8313c", startNotification: true, notifyBackToNormal: true, notifyFailure: true, notifyRepeatedFailure: true, notifySuccess: true, notifyAborted: true]
    ])
  }

  // Stages
  stages {

    stage('Source Code'){
      when { expression { env.BRANCH_NAME ==~ /(dev|staging|main)/ }
      }
      steps {
        sh '''cd /data/code/api-testing/karate-testing
              git pull
              '''
        }
      }

    stage('Build') {
      when { expression { env.BRANCH_NAME ==~ /(dev|staging|main)/ }
        }
      steps {
        sh '''cd /data/code/api-testing/karate-testing
               docker build --build-arg APP_ENV=''' + agentLabel + ''' -t karate-testing:$BUILD_NUMBER .
              '''
        }
     }

    stage('Copy Images') {
           steps {
              script {
                        if ( env.BRANCH_NAME == "main" ){
                             sh '''cd /data/jenkins-agent
                                   docker save -o karate-testing-$BUILD_NUMBER.tar karate-testing:$BUILD_NUMBER
                                   scp karate-testing-$BUILD_NUMBER.tar fahrenheit.epa.gov:~
                                   scp karate-testing-$BUILD_NUMBER.tar zeus.epa.gov:~
                                '''
                        } else if ( env.BRANCH_NAME == "dev" ) {
                                    sh '''cd /data/jenkins-agent
                                          docker save -o karate-testing-$BUILD_NUMBER.tar karate-testing:$BUILD_NUMBER
                                          scp karate-testing-$BUILD_NUMBER.tar dust.epa.gov:~
                                          scp karate-testing-$BUILD_NUMBER.tar drax.epa.gov:~
                                       '''
                          }  else if ( env.BRANCH_NAME == "staging" ) {
                                       sh '''cd /data/jenkins-agent
                                             docker save -o karate-testing-$BUILD_NUMBER.tar karate-testing:$BUILD_NUMBER
                                             scp karate-testing-$BUILD_NUMBER.tar spot.epa.gov:~
                                             scp karate-testing-$BUILD_NUMBER.tar salo.epa.gov:~
                                          '''
                             }
                       }
                    }
         }

        stage('Load Images'){
          steps {
            script {
                   if ( env.BRANCH_NAME == "main" ){
                        sh '''cd /data/jenkins-agent
                              ssh zeus.epa.gov docker load -i karate-testing-$BUILD_NUMBER.tar
                              ssh fahrenheit.epa.gov docker load -i karate-testing-$BUILD_NUMBER.tar
                           '''
                   } else if ( env.BRANCH_NAME == "dev" ) {
                               sh '''cd /data/jenkins-agent
                                     ssh dust.epa.gov docker load -i karate-testing-$BUILD_NUMBER.tar
                                     ssh drax.epa.gov docker load -i karate-testing-$BUILD_NUMBER.tar
                                  '''
                     } else if ( env.BRANCH_NAME == "staging" ) {
                                 sh '''cd /data/jenkins-agent
                                       ssh spot.epa.gov docker load -i karate-testing-$BUILD_NUMBER.tar
                                       ssh salo.epa.gov docker load -i karate-testing-$BUILD_NUMBER.tar
                                    '''
                       }
                  }
                }
         }

       stage('Clean') {
          steps {
            script {
                   if ( env.BRANCH_NAME == "main" ){
                        sh '''ssh fahrenheit.epa.gov rm karate-testing-$BUILD_NUMBER.tar
                              ssh zeus.epa.gov rm karate-testing-$BUILD_NUMBER.tar
                           '''
                   } else if ( env.BRANCH_NAME == "dev" ) {
                               sh '''ssh dust.epa.gov rm karate-testing-$BUILD_NUMBER.tar
                                     ssh drax.epa.gov rm karate-testing-$BUILD_NUMBER.tar
                                  '''
                     } else if ( env.BRANCH_NAME == "staging" ) {
                                                   sh '''ssh spot.epa.gov rm karate-testing-$BUILD_NUMBER.tar
                                                         ssh salo.epa.gov rm karate-testing-$BUILD_NUMBER.tar
                                                      '''
                       }
                   }
                }
         }

        stage('Deploy') {
          steps {
            script {
                    if ( env.BRANCH_NAME == "dev" || env.BRANCH_NAME == "staging" || env.BRANCH_NAME == "main" ){
                         sh '''#!/bin/bash
                               docker service update --image karate-testing:$BUILD_NUMBER karate-testing
                            '''
                     }
                   }
              }
         }

     }
}
