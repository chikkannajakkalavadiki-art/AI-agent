pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/chikkannajakkalavadiki-art/AI-agent.git'
            }
        }

        stage('Build and Test') {
            steps {
                sh 'chmod +x mvnw'
                sh './mvnw clean verify'
            }
        }
    }
}

/*pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/chikkannajakkalavadiki-art/AI-agent.git'
            }
        }

        stage('Verify Project') {
            steps {
                sh 'ls'
            }
        }
    }
}*/