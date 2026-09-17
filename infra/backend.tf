terraform {
  backend "s3" {
    bucket         = "feedbackform-flask-app"
    key            = "eks/terraform.tfstate"   # path inside the bucket where state is stored
    region         = "ap-south-1"
    dynamodb_table = "FBF-lock"
    encrypt        = true
  }
}