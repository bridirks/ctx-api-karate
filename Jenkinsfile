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
       [name: "karate-testing", url: "NEED THIS INFORMATION", startNotification: true, notifyBackToNormal: true, notifyFailure: true, notifyRepeatedFailure: true, notifySuccess: true, notifyAborted: true]
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
               docker build --build-arg APP_ENV=dev -t karate-testing .
              '''
        }
     }

    stage('Remove Old Containers'){
      when { expression { env.BRANCH_NAME ==~ /(dev|staging|main)/ }
        }
      steps {
        sh '''cd /data/code/impact/impact2api
              docker-compose down
              '''
        }
    }

    stage('Deploy') {
      when { expression { env.BRANCH_NAME ==~ /(dev|staging|main)/ }
        }
      steps {
        sh '''id
              hostname
              cd /data/code/impact/impact2api
              docker-compose up -d'''
        }
      }
  }
}
