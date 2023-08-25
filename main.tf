provider = "aws" {
  region = "ap-south-1"
  access_key= "ACCESS_KEY_ID"
  secret_key= "SECRET_AECCESS_KEY"
}

data "archive_file" "lambda_function_archive" {
  type        = "zip"
  source_dir  =  "./../automation.py"  # Path to the directory containing your Lambda function code
  output_path = "./../automation.py.zip"   # Path where you want to save the generated zip archive
}



resource "aws_lambda_function" "my_function" {
    role = "arn:aws:iam::681217613251:role/my-lambda-role"
    function_name = "my_lambda_function"
    runtime = "python3.8"
    handler = "index.handler"
    timeout = 300
    filename     = "lambda_function.zip"
}
