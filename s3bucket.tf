resource "aws_s3_bucket" "my-bucket" {
   bucket = "my-unique-bucket-name-12345"
     tags = {
       Name        = "My bucket"
       Environment = "Dev"
  }
  
}
