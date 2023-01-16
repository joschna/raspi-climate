resource "aws_iam_user" "pi" {
  name = "pi"
}

resource "aws_iam_access_key" "pi" {
  user   = aws_iam_user.pi.name
  status = "Inactive"
}

resource "aws_iam_user_policy" "pi_database_rw" {
  name = "pi-database-rw"
  user = aws_iam_user.pi.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "dynamodb:PutItem",
          "dynamodb:GetItem",
          "dynamodb:Query"
        ],
        Resource = aws_dynamodb_table.climate.arn
      }
    ]
  })
}
