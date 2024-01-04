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

    stage('DockerBuild') {
      steps {
        sh 'docker build -t simplegolang . -t sharvis8/simplegolang:latest'
      }
    }

    stage('DockerLogin') {
      environment {
        DOCKERHUB_USER = 'sharvis8'
        DOCKERHUB_PASSWORD = 'Vantage@#456'
      }
      steps {
        sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD'
      }
    }

    stage('Dockerhub Push') {
      steps {
        sh 'docker push sharvis8/simplegolang:latest'
      }
    }

    stage('KubernetesDeployment') {
      steps {
        script{ kubernetesDeploy('configs: "Deployment.yaml", kubeconfigId:"kubernetes")}
      }
    }

  }
}
