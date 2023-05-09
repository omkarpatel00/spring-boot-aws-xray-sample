pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'base', url: 'https://github.com/omkarpatel00/spring-boot-aws-xray-sample.git'
            }
        }
        
        stage('Build Image') {
            steps {
                sh 'docker build -t op .'
            }
        }
      }
}
      
        
