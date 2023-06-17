variable "aws_region" {
    description = "AWS Region"
    default = "us-east-1"
}

variable "key_pair" {
    description = "Key pair used to login to the instance"
}

variable "instance_type" {
    description = "Instance type for the simple instance"
    default = "t3.large"
}

variable "prefix" {
    description = "Unique prefix for naming"
}
