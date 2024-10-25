terraform {
  backend "s3" {
    bucket = "image-builder-s3-01"
    key    = "ec2-image-builder/us-east-2"
    region = "us-east-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "gitops-terraform-state-block"
  }
}
# terraform init -backend-config="backend.tf"
# terraform plan -var-file="terraform.tfvars"
# terraform apply -var-file="terraform.tfvars"  
 # terraform destroy -var-file="terraform.tfvars"