resource "aws_lambda_layer_version" "simple_node_lambda-layer" {
  filename            = "layers/date-fns/date-fns-layer.zip"
  layer_name          = "simple_node_lambda-layer"
  source_code_hash    = "${filebase64sha256("layers/date-fns/date-fns-layer.zip")}"
  compatible_runtimes = ["nodejs14.x"]
}