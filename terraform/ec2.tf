resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "app" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "application"
  }
}

resource "aws_instance" "middleware" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "middleware"
  }
}

resource "aws_instance" "db" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "database"
  }
}
