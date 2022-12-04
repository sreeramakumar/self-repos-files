provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "ap-south-1"
}
resource "aws_instance" "test_server" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"
  key_name = "sri-key"
   subnet_id = "subnet-0f840cec82fced399"
   security_groups = ["sg-0e80014777a0f2a6a"]
  tags = {
    Environment = "testserver"
    Name = "test_server"
  }
}
