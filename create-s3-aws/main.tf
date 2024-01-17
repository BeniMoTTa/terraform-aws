variable "region"{
    type = string
    default = "us-east-1"
}

variable "bucket-name"{
    type=string
    default = "testing-tf-bucket-144"
}

variable "tags" {
    type = map(string)
    default = {
        Name = "My bucket one"
        Environment = "Dev"
    }
}



provider "aws" {
    region = var.region
}

resource "aws_s3_bucket" "testing-bucket-mota"{
    bucket = var.bucket_name
    acl = "private"
    tags = var.tags
    force_destroy = true
}



# if the bucket stores sensitive data, use encryption for added protection.
# resource "aws_s3_bucket" "testing-bucket-mota" {
#   # ... other configuration
#   server_side_encryption_configuration {
#     rule {
#       apply_server_side_encryption_by_default {
#         sse_algorithm = "AES256"
#       }
#     }
#   }
# }