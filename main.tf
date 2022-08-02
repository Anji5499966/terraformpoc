#do aws configure

provider "aws" {

region = "ap-south-1"
}
resource "aws_instance" "example" {
  ami           = "ami-076e3a557efe1aa9c"
  instance_type = "t2.micro"
  Key_name ="ubuntu key"
}
