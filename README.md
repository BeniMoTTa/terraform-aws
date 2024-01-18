# Terraform

### Introduction

Hello! In this simple Terraform project, we will learn how to create, destroy, and edit an S3 bucket and an EC2 instance on AWS.

### Setup

To get started, we need to install Terraform. You can do this by following the instructions on the Terraform website.

Once you have installed Terraform, you need to initialize the project. You can do this by running the following command:

`terraform init`
This command will download the modules and providers needed.

### Creating an S3 bucket

To create an S3 bucket, you can use the following code:

```

resource "aws_s3_bucket" "my_bucket" {
bucket = "my-bucket"
acl = "public-read"
}
```

This code will create an S3 bucket named my-bucket with public read access.

To deploy the S3 bucket, you can run the following command:

`terraform apply`
This command will create the S3 bucket on AWS.

### Destroying an S3 bucket

To destroy an S3 bucket, you can run the following command:

`terraform destroy`
This command will destroy the S3 bucket on AWS.

### Editing an S3 bucket

To edit an S3 bucket, you can run the following command:

`terraform plan`
This command will show a deployment plan that you can use to preview the changes that will be made.

After making the desired changes, you can run the following command to deploy the changes:

`terraform apply`
This command will deploy the changes to the S3 bucket on AWS.

### Creating an EC2 instance

To create an EC2 instance, you can use the following code:

```
resource "aws_instance" "my_instance" {
ami = "ami-0123456789abcdef0"
instance_type = "t2.micro"
key_name = "my-key-pair"
region = "us-east-1"
}
```

This code will create an EC2 instance with the default Amazon Linux 2 AMI, the t2.micro instance type, and the my-key-pair key pair in the us-east-1 region.

To deploy the EC2 instance, you can run the following command:

`terraform apply`
This command will create the EC2 instance on AWS.

### Destroying an EC2 instance

To destroy an EC2 instance, you can run the following command:

`terraform destroy`
This command will destroy the EC2 instance on AWS.

### Editing an EC2 instance

To edit an EC2 instance, you can run the following command:

`terraform plan`
This command will show a deployment plan that you can use to preview the changes that will be made.

After making the desired changes, you can run the following command to deploy the changes:

`terraform apply`
This command will deploy the changes to the EC2 instance on AWS.
