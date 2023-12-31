pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/sharvis8/simple-webserver-golang', branch: 'main')
      }
    }

    stage('Listing files') {
      steps {
        sh 'ls -la'
      }
    }

    stage('new empty file') {
      steps {
        sh 'touch emptyFile'
      }
    }

  }
}