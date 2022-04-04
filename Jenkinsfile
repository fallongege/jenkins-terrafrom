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
        stage ('Terraform Plan'){
            steps {
                sh 'terraform plan -var-file terraform-dev.tfvars'
            }
        }
        stage ('Terraform Apply'){
            steps {
                sh 'terraform apply -var-file terraform-dev.tfvars --auto-approve'
            }
        }
    }
    post {
        echo "Build is done"
    }
}
