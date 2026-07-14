pipeline {
    agent any

    stages {
        stage('Terraform Version') {
            steps {
                script {
                    sh 'terraform version'
                }
            }
        }
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
    }
}