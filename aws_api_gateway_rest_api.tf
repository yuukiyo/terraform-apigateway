resource "aws_api_gateway_rest_api" "hoge" {
  api_key_source = "HEADER"
  binary_media_types = [
    "application/octet-stream",
    "application/x-tar",
    "application/zip",
    "audio/basic",
    "audio/ogg",
    "audio/mp4",
    "audio/mpeg",
    "audio/wav",
    "audio/webm",
    "image/png",
    "image/jpg",
    "image/jpeg",
    "image/gif",
    "video/ogg",
    "video/mpeg",
    "video/webm",
  ]
  minimum_compression_size = -1
  name                     = "tri-ad-api"

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}
