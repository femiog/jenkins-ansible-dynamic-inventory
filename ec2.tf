provider "aws" {
      region = "us-east-1"
}
resource "aws_instance" "app" {
    ami           = "ami-08e637cea2f053dfa"
    instance_type = "t2.micro"
    security_groups = ["sg-091d2ac57442c814f"]
    key_name      =  "femiogkey2"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }  
}
