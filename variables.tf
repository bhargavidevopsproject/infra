variable "vpc_cidr_block" {
  type    = string
  default = "10.10.0.0/25"

}

//HIgh availability and zero down time

//Public subnet variables
variable "public_subnet_cidr_block_a" {
  type    = string
  default = "10.10.0.0/28"
}

variable "public_subnet_cidr_block_b" {
  type    = string
  default = "10.10.0.16/28"
}

variable "public_subnet_cidr_block_c" {
  type    = string
  default = "10.10.0.32/28"
}

//Private subnet variables
variable "private_subnet_cidr_block_a" {
  type    = string
  default = "10.10.0.64/28"
}


variable "private_subnet_cidr_block_b" {
  type    = string
  default = "10.10.0.80/28"
}

variable "private_subnet_cidr_block_c" {
  type    = string
  default = "10.10.0.96/28"
}

variable "instance_count" {
  type    = number
  default = 1
}


variable "public_subnets" {

  type        = list(string)
  description = "List of public subnets"
  default     = ["10.10.0.0/28", "10.10.0.16/28", "10.10.0.32/28"]
}


variable "private_subnets" {

  type        = list(string)
  description = "List of private subnets"
  default     = ["10.10.0.64/28", "10.10.0.80/28", "10.10.0.96/28"]
}

# 10.0.0.0/25 = 128 IP's : VPC CIDR Block - (eu-west-2) - London - 3 AZ's (2a,2b,2c)

# 64 - public subnet blocks - 10.0.0.0/26
#   16 - "10.10.0.0/28" 16  - eu-west-2a
#   16 - "10.10.0.16/28" 32 - eu-west-2b
#   16 - "10.10.0.32/28" 48 - eu-west-2c
#   16 - "10.10.0.48/28" 64 - eu-west-2a

# 64 - private subnet blocks - 10.0.0.64/26
#   16 - "10.10.0.64/28" 80 - eu-west-2a
#   16 - "10.10.0.80/28" 96 - eu-west-2b
#   16 - "10.10.0.96/28" 112 - eu-west-2c
#   16 - "10.10.0.112/28" 128 - eu-west-2a
