resource "aws_ecr_repository" "getmobile_ecr_repo" {
  name                 = "getmobile_ecr_repo" 
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}