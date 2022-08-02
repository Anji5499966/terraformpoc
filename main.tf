#do aws configure

provider "aws" {

region = "ap-south-1"
}
resource "aws_instance" "example" {
  #name = "anji1"
  count = 3
  ami           = "ami-076e3a557efe1aa9c"
  instance_type = "t2.micro"
  key_name = "ubuntu key"
  tags = {
    name = "server $(count.index)"
  }
}
