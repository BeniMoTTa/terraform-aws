module "ec2_instance"{
    source = "hashicorp/aws/modules/ec2_instance"

    ami = "ami-0123456789abcdef0"
    instance_type = "t2.micro"
    key_name = "my-key-pair"
    tags = {
        Name = "My EC2 Instance"
    }
}