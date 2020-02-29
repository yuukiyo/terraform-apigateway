resource "aws_lambda_permission" "apigateway" {
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.hoge.arn
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:ap-northeast-1:423610319017:${aws_api_gateway_rest_api.hoge.id}/*"
  statement_id  = "AllowHogeAPIInvoke"
}
