
pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage ('Git Checkout') {
            steps {
                git credentialsId: 'github', url: 'https://github.com/fallongege/jenkins-terrafrom.git'
            }
        }
        stage ('Terraform init') {
            steps{
                sh 'terraform init'
            }
        }
        stage ('Terraform Destroy'){
            steps {
                sh 'terraform destroy -var-file terraform-dev.tfvars --auto-approve'
            }
        }
    }
}
