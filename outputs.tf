output "lambda_invoke" {
  description = "Result of Lambda invocation"
  value       = aws_lambda_invocation.lambda_invocation.result
}


