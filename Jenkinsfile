// Determine which branch the proper agent will execute
def agentLabel
if ( env.BRANCH_NAME == 'main') {
  agentLabel = 'prod'
  karate.env = 'ip'
} else if ( env.BRANCH_NAME == 'staging') {
  agentLabel = 'stg'
  karate.env = 'stg'
} else if ( env.BRANCH_NAME == 'dev') {
  agentLabel = 'dev'
  karate.env = 'dev'
} else {
  // if not part of dev, staging, or main we are not going through the pipeline
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
  // Stages
  stages {

    stage('Signal Pipeline Start') {
      steps {
        slackSend channel: '#proj-dashboard-devops',
                  color: 'good',
                  message: "Starting karate tests ${env.BUILD_NUMBER} on ${env.karate.env} @ ${env.BUILD_URL}"
      }
    }

    stage('configure tests'){
      when { expression { env.BRANCH_NAME ==~ /(dev|staging|main)/ }
      }
      steps {
        sh '''cd /data/code/ccd/api-tests
              git branch
              git pull
              '''
        }
    }

    stage('run tests') {
      when { expression { env.BRANCH_NAME ==~ /(dev|staging|main)/ }
        } 
      steps {
        sh '''cd /data/code/ccd/api-tests
              rm -rf target
              ./karate -e ${env.karate.env} src/ccd-dashboard
              '''
        }
     }  
    
    stage('process results'){
      when { expression { env.BRANCH_NAME ==~ /(dev|staging|main)/ }
        } 
      steps {
        sh '''cd /data/code/ccd/api-image/target/karate-reports             
              ll
              '''
        }
    }

  }
  post {
      success {
        slackSend channel: '#proj-dashboard-devops',
                  color: 'good',
                  message: "Successfully ran tests ${env.BUILD_NUMBER} on ${env.karate.env} @ ${env.BUILD_URL}"
                }
      failure { 
        slackSend channel: '#proj-dashboard-devops',
                  color: 'danger',
                  message: "Something is wrong with tests ${env.BUILD_NUMBER} on ${env.karate.env} @ ${env.BUILD_URL}"
                }
    }
}
