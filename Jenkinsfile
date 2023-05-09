pipeline {
    agent any
  
    environment {
      APP_NAME = 'my-java-app'
      ECR_REPO = 'my-ecr-repo'
      ECR_REGION = 'ap-southeast-1'
      APP = 'java-Xray'
      IMAGE_TAG='java-${BUILD_NUMBER}'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/base']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'op-github', url: 'https://github.com/omkarpatel00/spring-boot-aws-xray-sample.git']]])
            }
        }   
        stage('Build an image') {
            steps {
                sh 'mvn clean install'
                sh "docker build -t java-xray-${app} ."
            }
        }
        stage('Push to ECR') {
           steps {
                    sh "aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 490167669940.dkr.ecr.ap-southeast-1.amazonaws.com"
                    sh "docker tag my-ecr-repo-op-${app}:latest 490167669940.dkr.ecr.ap-southeast-1.amazonaws.com/my-ecr-repo-op:${app}-${BUILD_NUMBER}"
                    sh "docker push 490167669940.dkr.ecr.ap-southeast-1.amazonaws.com/my-ecr-repo-op:${app}-${BUILD_NUMBER}"
                }
           }
         }
      }
