variable "db_name" {
  description = "value"
  type = string
  default = "dev_db"
  sensitive = true
}

variable "engine_version" {
  description = "value"
  type = string
  default = "5.7"
  sensitive = true
}

variable "instance_class" {
  description = "value"
  type = string
  default = "db.t3.micro"
  sensitive = true
}

variable "dev_username" {
  description = "value"
  type = string
  default = "Brandon"
 sensitive = true
}


variable "dev_password" {
  description = "value"
  type = string
  default = "admin"
 sensitive = true
}

