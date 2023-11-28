resource "aws_dynamodb_table" "table-GameScores" {
  name           = "GameScores"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }  

    tags = {
    Name        = "dynamodb-GameScores"
    Environment = var.environment
  }  
}