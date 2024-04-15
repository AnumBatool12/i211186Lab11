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
