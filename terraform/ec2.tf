resource "aws_instance" "frontend" {
  ami = var.ami
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
}

resource "aws_instance" "app" {
  ami = var.ami
  instance_type = "t2.micro"
}

resource "aws_instance" "middleware" {
  ami = var.ami
  instance_type = "t2.micro"
}

resource "aws_instance" "db" {
  ami = var.ami
  instance_type = "t2.micro"
}
