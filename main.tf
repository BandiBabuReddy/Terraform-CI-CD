resource "aws_instance" "APP1" {
  ami           = "ami-008677ef1baf82eaf"
  instance_type = "t2.micro"
  user_data     = file("${path.module}/App-install.sh") # file provisioners 
  tags = {
    Name = "APP1"

  }
}
