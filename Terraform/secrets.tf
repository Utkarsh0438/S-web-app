
resource "aws_secretsmanager_secret" "simple-web-app" {
  name = "simple-web-app-9"
}

resource "aws_secretsmanager_secret_version" "simple-web-app" {
  secret_id = aws_secretsmanager_secret.simple-web-app.id
  secret_string = jsonencode(var.secrets)
}