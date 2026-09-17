resource "aws_ecr_repository" "app" {
  name                 = "feedback-app"
  image_tag_mutability = "MUTABLE"   # allows reusing tags like "latest"; use IMMUTABLE for stricter setups

  image_scanning_configuration {
    scan_on_push = true              # automatically scans images for known vulnerabilities on push
  }
}

output "ecr_repository_url" {
  description = "URL of the ECR repository - use this when pushing/pulling images"
  value       = aws_ecr_repository.app.repository_url
}
