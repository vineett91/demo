provider "aws" {

}

#Configure the AWS Provider
provider "aws"{
version = "~>2.0"
region  = "us-east-1"
}

#provider.tf

provider "aws"{
region = "us-east-1"
access_key = "AKIAVI7OX3YFC35MSP67"
secret_key = "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"
}

 #vpc.tf

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "VPC-demo"
    Purpose = "terrafrom using Jenkins"
  }
}