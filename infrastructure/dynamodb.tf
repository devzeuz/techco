resource "aws_dynamodb_table" "main_table" {
  name            = "TechCuratorData"
  billing_mode   = "PAY_PER_REQUEST" # Scale to zero cost when not in use
  hash_key       = "PK"              # Partition Key
  range_key      = "SK"              # Sort Key

  attribute {
    name = "PK"
    type = "S"
  }

  attribute {
    name = "SK"
    type = "S"
  }

  # Best Practice: Point-in-time recovery for production-readiness
  point_in_time_recovery {
    enabled = true
  }

  tags = {
    Environment = "dev"
    Project     = "TechCurator"
  }
}