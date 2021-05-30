resource "aws_s3_bucket" "book-bucket" {
  bucket = "books"

  acl = "private"
}

resource "aws_s3_bucket_object" "books_folder" {
  bucket = aws_s3_bucket.book-bucket.id
  key = "root/"
}

resource "aws_s3_bucket_object" "book-files" {
  bucket = aws_s3_bucket.book-bucket.id
  for_each = fileset(path.root, "books/**")
  key = replace(each.value, "books" , "root" )
  source = each.value
}