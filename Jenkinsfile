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
                //sh "npm run build"
            }
        }
    }
post{
    always{
        cleanWs()
    }
}
}

