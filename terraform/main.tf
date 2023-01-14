terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0bba69335379e17f8"
  instance_type = "t2.nano"

  tags = {
    Name = "shigeek-prod"
  }
}
