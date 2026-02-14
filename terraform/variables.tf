variable "aws_region" {
  description = "Регион, где разворачиваем MinIO"
  type        = string
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "Тип сервера"
  type        = string
  default     = "t3.medium"
}

variable "key_name" {
  description = "Имя твоего SSH ключа в панели AWS"
  type        = string
}

variable "project_name" {
  description = "Название проекта для тегов"
  type        = string
  default     = "minio-prod"
}