resource "aws_api_gateway_stage" "hoge" {
  stage_name    = "api"
  rest_api_id   = aws_api_gateway_rest_api.hoge.id
  deployment_id = aws_api_gateway_deployment.hoge.id

  xray_tracing_enabled = true
}