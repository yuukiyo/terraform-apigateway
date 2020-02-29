data "archive_file" "hoge" {
  type        = "zip"
  source_dir  = "lambda/app"
  output_path = "lambda/upload/lambda.zip"
}

resource "aws_lambda_function" "hoge" {
  runtime          = "python3.8"
  handler          = "app.lambda_handler"
  function_name    = "LambdaSample"
  filename         = data.archive_file.hoge.output_path
  source_code_hash = data.archive_file.hoge.output_base64sha256
  role             = aws_iam_role.hoge.arn
  publish          = false
  layers           = []
  memory_size      = 128
  timeout          = 60
}
