pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/omkarpatel00/-spring-boot-aws-xray-sample.git'
            }
        }
        
        stage('Build Image') {
            steps {
                sh 'docker build -t op .'
            }
        }
      }
}
      
        
