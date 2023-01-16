resource "aws_dynamodb_table" "climate" {
  name         = "climate"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "timestamp"

  attribute {
    name = "timestamp"
    type = "S"
  }
}
