resource "aws_iam_role_policy" "lambda_basic_policy" {
  name = "lambda_simple_node_basic_policy"
  role = aws_iam_role.simple-node-lambda_role.id

  policy = <<EOF
{
	  "Version": "2012-10-17",
	  "Statement": [
	    {
	      "Effect": "Allow",
	      "Action": [
	        "logs:CreateLogGroup",
	        "logs:CreateLogStream",
	        "logs:PutLogEvents"
	      ],
	      "Resource": [
	        "arn:aws:logs:*:*:*"
	      ]
	    }
	  ]
	}
	EOF
}

resource "aws_cloudwatch_log_group" "main" {
  name              = "SimpleNodeLambdaFunction"
  retention_in_days = 1
}