pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = 'us-east-1'
    }
    stages{
        stage('Checkout SCM'){
            steps{
                script{
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: '<github-repo-url>']])
                }
            }
        }
         stage('Initializing Terraform'){
            steps{
                script{
                         sh 'terraform init'
                }
            }
        }
        stage('Formating terraform code'){
            steps{
                script{
                         sh 'terraform fmt'
                }
            }
        }
        stage('Validating Terraform'){
            steps{
                script{
                         sh 'terraform validate'
                }
            }
        }
        stage('Previewing the infrastructure'){
            steps{
                script{
                         sh 'terraform plan'
                    
                    input(message: "Are you sure to proceed?", ok: "proceed")
                }
            }
        }
        stage('Creating/Destroying an AWS Ec2 Instance'){
            steps{
                script{
                    
                         sh 'terraform $action --auto-approve'
                }
            }
        }
        
    }
}
