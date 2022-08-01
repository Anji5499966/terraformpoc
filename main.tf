#do aws configure

provider "aws" {

region = "ap-south-1"
}
resource "aws_instance" "server" {


count= 1 #create four similar EC2 instances
ami = "ami-08df646e18b182346"

instance_type = "t2.micro"

key name= "ubuntu key"

tags = {

Name = "Server $(count.index)"
}
}
