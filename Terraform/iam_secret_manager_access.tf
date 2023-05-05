
# Policy: Secrets Access

resource "aws_iam_policy" "secrets-access" {
  name = "secrets-access"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "secretsmanager:GetSecretValue",
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
EOF
}