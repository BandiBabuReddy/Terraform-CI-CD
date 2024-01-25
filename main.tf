resource "aws_instance" "APP1" {
  ami           = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"
  user_data     = file("${path.module}/App-install.sh") # file provisioners 
  tags = {
    Name = "APP1"

  }
}
