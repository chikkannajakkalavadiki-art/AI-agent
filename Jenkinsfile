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

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ai-agent:latest .'
                sh 'docker tag ai-agent:latest chikku150/ai-agent:latest'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKERHUB_USER',
                    passwordVariable: 'DOCKERHUB_TOKEN'
                )]) {
                    sh '''
                        set +x
                        echo "$DOCKERHUB_TOKEN" | docker login -u "$DOCKERHUB_USER" --password-stdin
                        docker push chikku150/ai-agent:latest
                        docker logout
                    '''
                }
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

        stage('Build and Test') {
            steps {
                sh 'chmod +x mvnw'
                sh './mvnw clean verify'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ai-agent:latest .'
            }
        }
    }
}*/