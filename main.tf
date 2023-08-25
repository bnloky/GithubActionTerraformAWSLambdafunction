provider "aws" {
  region = "ap-south-1"
  access_key= "ACCESS_KEY_ID"
  secret_key= "SECRET_AECCESS_KEY"
}

resource "aws_lambda_function" "my_function" {
    name = "my_function"
    runtime = "python3.8"
    handler = "index.handler"
    code = "lambda_function.zip"
    timeout = 300
  }
