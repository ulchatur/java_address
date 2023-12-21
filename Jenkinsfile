pipeline {
    agent any
    tools {
        maven "Maven"
    }
   environment {
    DOCKERHUB_CREDENTIALS = credentials('docker-hub-sonuk2911')
    }
    stages {
        stage('SCM Checkout') {
            steps{
            git 'https://github.com/ulchatur/java_address.git'
            }
        }
        stage ('Maven Build') {
            steps{
                sh 'mvn clean package'
            }
        }

        stage('Build docker image') {
            steps {  
                sh 'docker build -t sonuk2911/javaapp:$BUILD_NUMBER .'
            }
        }
        stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('push image') {
            steps{
                sh 'docker push sonuk2911/javaapp:$BUILD_NUMBER'
            }
        }
}
}