pipeline {
    agent any

    enviroment {
        DOCKER_HUB_CREDENTIALS = credentials('docker-hub-credentials')
        DOCKER_HUB_USERNAME = "${DOCKER_HUB_CREDENTIALS_USR}"
        DOCKER_HUB_PASSWORD = "${DOCKER_HUB_CREDENTIALS_PSW}"
        LAB_IMAGE = "${DOCKER_HUB_USERNAME}/lab11"
    }

    stages {
        stage('Checkout'){
            steps {
                sh 'echo checking out'
                git 'https://github.com/AnumBatool12/i211186Lab11.git'
            }
        }
        stage ('Dependency Installation'){
            steps {
                sh 'echo installing dependencies'
                sh 'npm install'
            }
        }
        stage ('Build Image'){
            steps{
                docker.build("${LAB_IMAGE}:latest", "lab11")
            }
        }
        stage ('Run Image'){
            steps {
                sh 'docker run -dp 3000:3000 ${LAB_IMAGE}:latest'
            }
        }
        stage ('Kill Image'){
            steps{
                sh 'docker stop ${LAB_IMAGE}:latest'
                sh 'docker rm ${LAB_IMAGE}:latest'
                sh 'docker rmi ${LAB_IMAGE}:latest'
            }
        }
    }
}











pipeline {
    agent any

    stages {
        stage('Step 1: Checkout'){
            steps {
                sh 'echo checking out'
                git 'https://github.com/AnumBatool12/i211186Lab11.git'
            }
        }
        stage ('Step 2: Dependency Installation'){
            steps {
                sh 'echo installing dependencies'
                sh 'npm install'
            }
        }
        stage ('Step 3: Build Docker Image'){
            steps {
                sh 'docker build -d frontend-image'
            }
        }
        stage ('Step 4: Run the Docker Image'){
            steps {
                sh 'docker run -dp 3000:3000 frontend-image'
            }
        }
        
        stage('Step 5: Push Docker Image') {
            steps {
                
                sh 'docker push frontend-image'
            }
        }
    }
}
