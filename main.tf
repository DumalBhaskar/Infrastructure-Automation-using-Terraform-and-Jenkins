terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  access_key = "AKIAYU7H7SN4QIHBNCNH"
  secret_key = "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"
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
