# S3 Buckets
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "terraform-course-202306091011" 
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# IAM Users
resource "aws_iam_user" "my_iam_user" {
  name = "my_iam_user"
}