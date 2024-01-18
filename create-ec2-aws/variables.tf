variable "ami" {
    default = "ami-030232392awf0"
}
variable "instance_type" {
    default = "t2.micro"
}

variable "key_name"{
    description = "AnyKey to use."
}

variable "region"{
    default = "us-east-1"
}
