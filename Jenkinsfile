pipeline {
    agent any

    tools {
        terraform 'terraform'
    }

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