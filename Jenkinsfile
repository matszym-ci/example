pipeline {
  agent {
    dockerfile {
      filename 'ci.dockerfile'
      args '-p 3000:3000 -p 5000:5000'
      reuseNode true
    }
  }
  environment {
    CI = 'true'
  }
  stages {
    stage('quality') {
      parallel {
        stage('unit tests') {
          steps {
            sh 'npm test -- --browser headless --single-run'
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
