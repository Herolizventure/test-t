terraform {
  backend "s3" {
    bucket = "mydev-state"
    key    = "romuald/a01_eks/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    #dynamodb_table = "dynamodb-terraform-lock"#
  }
}

## this is the command to create the dynamoDB table if you have not yet created one

/*resource "aws_dynamodb_table" "dynamodb-terraform-lock" {
   name = "terraform-lock-dev"
   hash_key = "LockID"
   read_capacity = 200
   write_capacity = 200

   attribute {
      name = "LockID"
      type = "S"
   }

   tags = {
     Name = "terraform-lock-dev"
   }
}*/