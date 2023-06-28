# Lines to create a AWS S3 bucket

resource "aws_s3_bucket" "b" {
  bucket = "luxxy-covid-testing-system-pdf-en-Daniel321"
  acl    = "private"
}
