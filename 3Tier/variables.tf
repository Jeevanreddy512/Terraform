variable "cidr_block" {
  description  = "VPC Cidr Block"
  default = "10.0.0.0/16"
  type = string
}

variable "public-web-subnet-1-cidr" {
  description  = "Public_web_Subnet_1"
  default = "10.0.1.0/24"
  type = string
}

variable "public-web-subnet-2-cidr" {
  description  = "Public_web_Subnet_2"
  default = "10.0.2.0/24"
  type = string
}

variable "private-app-subnet-1-cidr" {
  description  = "Private_app_Subnet_1"
  default = "10.0.3.0/24"
  type = string
}

variable "private-app-subnet-2-cidr" {
  description  = "Private_app_Subnet_2"
  default = "10.0.4.0/24"
  type = string
}

variable "private-db-subnet-1-cidr" {
  description  = "Private_DB_Subnet_1"
  default = "10.0.5.0/24"
  type = string
}

variable "private-db-subnet-1-cidr" {
  description  = "Private_DB_Subnet_2"
  default = "10.0.6.0/24"
  type = string
}



