resource "aws_instance" "minio_server" {
  ami           = "ami-0c7217cdde317cfec" # Ubuntu 22.04 LTS (проверь регион!)
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.minio_sg.id]
  key_name      = var.key_name

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }

  tags = {
    Name = "MinIO-Production"
    Project = "minio-aws"
    Owner = "Eleonora"
  }
}

output "instance_public_ip" {
  value = aws_instance.minio_server.public_ip
}
