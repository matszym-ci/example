pipeline {
  agent {
    docker {
      image 'node:8'
      args '-p 3000:3000 -p 5000:5000'
    }
  }
  environment {
    CI = 'true'
  }
  stages {
    stage('unit tests') {
      parallel {
        stage('unit tests') {
          steps {
            sh 'npm test'
          }
        }
        stage('lint') {
          steps {
            sh 'npm run lint'
          }
        }
        stage('e2e') {
          steps {
            sh 'npm run e2e'
          }
        }
      }
    }
  }
}
