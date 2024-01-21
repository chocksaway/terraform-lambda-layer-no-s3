resource "aws_lambda_invocation" "lambda_invocation" {
  function_name = "SimpleNodeLambdaFunction"

  input = jsonencode({
    hello = "world"
  })


  triggers = {
    redeployment = timestamp()
  }

  depends_on = [
    aws_lambda_function.simple_node_lambda_function
  ]
}


