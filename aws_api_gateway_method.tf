resource "aws_api_gateway_method" "hoge" {
  rest_api_id   = aws_api_gateway_rest_api.hoge.id
  resource_id   = aws_api_gateway_resource.hoge.id
  http_method   = "GET"
  authorization = "NONE"
}
