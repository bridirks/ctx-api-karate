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
               docker build -f Dockerfile  --build-arg APP_ENV=''' + agentLabel + ''' -t karate-testing:$BUILD_NUMBER .
              '''
        }
     }

        stage('Deploy') {
          when { expression { env.BRANCH_NAME ==~ /(dev|staging|main)/ }
            }
          steps {
             sh(returnStdout: true, script: '''#!/bin/bash
                cd /data/code/api-testing/karate-testing
                if [[ $(docker ps | grep -i karate-testing) ]];then
	            docker stop karate-testing
	            docker rm karate-testing
	        else
	            echo "karate-testing container not running .."
                fi
                docker run -itd -p 2900:80 --restart unless-stopped --name karate-testing karate-testing:$BUILD_NUMBER
             '''.stripIndent())
            }
       }
   }
}
