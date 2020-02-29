resource "aws_api_gateway_resource" "hoge" {
  rest_api_id = aws_api_gateway_rest_api.hoge.id
  parent_id   = aws_api_gateway_rest_api.hoge.root_resource_id
  path_part   = "hoge"
}
