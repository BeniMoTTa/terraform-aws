
resource "aws_instance" "example"{
    ami = "${var.ami}"
    instance_type = var.instance_type
    key_name = var.key_name
    region = var.region
    tags = {
        Name = "EC2 TestName Instance"
    }
}

