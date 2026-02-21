resource "aws_s3_bucket" "my-bucket" {
   bucket = "my-unique-worbuc-bucketcdec4"
     tags = {
       Name        = "My bucket"
       Environment = "Dev"
  }
  
}
