provider "aws" {
      region = "us-east-1"
}
resource "aws_instance" "app" {
    ami           = "ami-08e637cea2f053dfa"
    instance_type = "t2.micro"
    security_groups = ["sg-0d539cb40a50a3662 - launch-wizard-2"]
    key_name      =  "femiogkey2"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }  
}
