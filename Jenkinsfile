pipeline {
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
}