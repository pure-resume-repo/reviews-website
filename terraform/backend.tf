terraform {
  backend "s3" {
    bucket = "user-websites-backend"
    key    = "reviews-website/ec2/terraform.state"
    region = "us-east-1"

    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
