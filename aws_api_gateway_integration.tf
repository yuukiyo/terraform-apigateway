resource "aws_api_gateway_integration" "hoge" {
  rest_api_id = aws_api_gateway_rest_api.hoge.id
  type        = "AWS_PROXY"
  resource_id = aws_api_gateway_resource.hoge.id
  http_method = "GET"

  cache_key_parameters    = []
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  request_parameters      = {}
  request_templates       = {}
  timeout_milliseconds    = 29000
  uri                     = aws_lambda_function.hoge.invoke_arn
}
