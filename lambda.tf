resource "aws_lambda_function" "simple_node_lambda_function" {
  filename      = "lambda.zip"
  function_name = "SimpleNodeLambdaFunction"
  role          = aws_iam_role.simple-node-lambda_role.arn
  handler       = "index.handler"
  source_code_hash = filebase64sha256("lambda.zip")
  runtime = "nodejs20.x"
  layers = [aws_lambda_layer_version.simple_node_lambda-layer.arn]
}

