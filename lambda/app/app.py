def lambda_handler(event, context):
    return {
        'isBase64Encoded': False,
        'statusCode': 200,
        'headers': {
            "x-custom-header" : "my custom header value",
            "Access-Control-Allow-Origin": "my-origin.com"
        },
        'body': '{"message": "Hello from AWS Lambda4"}'
    }
