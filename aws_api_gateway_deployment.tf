resource "aws_api_gateway_deployment" "hoge" {
  depends_on = [
    aws_api_gateway_integration.hoge
  ]
  rest_api_id       = aws_api_gateway_rest_api.hoge.id
  stage_name        = "api"
  stage_description = "setting file hash = ${uuid()}"
}
