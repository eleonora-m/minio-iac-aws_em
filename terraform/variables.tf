variable "aws_region" {
  description = "Регион AWS для развертывания"
  type        = string
  default     = "us-east-1"  # Установи здесь тот регион, где твой ключ
}

variable "instance_type" {
  description = "Тип инстанса EC2"
  type        = string
  default     = "t3.medium"
}

variable "key_name" {
  description = "Имя SSH ключа, созданного в AWS"
  type        = string
  # Значение по умолчанию не ставим, чтобы случайно не запушить его в GitHub
}

variable "project_name" {
  description = "Название проекта для тегов"
  type        = string
  default     = "minio-production"
}