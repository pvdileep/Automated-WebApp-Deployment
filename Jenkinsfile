pipeline {
    agent any

    environment {
        IMAGE_NAME = "dockerwebapp"
        CONTAINER_NAME = "dockerwebapp-container"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Building Application..."'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                docker stop $CONTAINER_NAME || true
                docker rm $CONTAINER_NAME || true
                docker run -d -p 8085:80 --name $CONTAINER_NAME $IMAGE_NAME
                '''
            }
        }
    }
}
