# terraform-lambda-layer-no-s3
Terraform Lambda with Layer.  No S3 bucket.

Create and zip the dependencies:
```
cd layers/date-fns/nodejs
npm init -y
npm install date-fns@2.24.0
zip -r9 date-fns-layer.zip .
```

Zip the Lambda code:
```
zip -r9 lambda.zip index.js
```

Terraform:
```
terraform plan
terraform apply
terraform destroy
```





