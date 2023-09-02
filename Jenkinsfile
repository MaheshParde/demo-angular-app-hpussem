pipeline {
    agent any
    tools {
        nodejs "Nodejs"
    }
    stages {
        stage('checkout code') {
            steps {
                git 'https://github.com/MaheshParde/demo-angular-app-hpussem.git'
            }	
        }
        stage('Build') {
            steps {
                sh 'npm install'
                //sh "npm build --prod"
                //sh "npm run build"
            }
        }
        stage('Docker image build') {
            steps {
                sh 'docker build -t angular .'
                sh 'docker tag angular maheshparde/angular-repo:${BUILD_NUMBER}'
            }
        }
    }
post{
    always{
        cleanWs()
    }
}
}

