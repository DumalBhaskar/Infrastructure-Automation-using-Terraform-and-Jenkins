pipeline{
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = 'ap-south-1'
    }

    stages{
        stage('Checkout SCM'){
            steps{
                script{
                    
                    git branch: 'main', url: 'https://github.com/DumalBhaskar/Infrastructure-Automation-using-Terraform-and-Jenkins.git'
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
     
     

        stage('Previewing the infrastructure'){
            steps{
                script{
                         sh 'terraform plan'
                    
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