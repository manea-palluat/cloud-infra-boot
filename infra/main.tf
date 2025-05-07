provider "aws" {
    region = var.aws_region
}

resource "aws_s3_bucket" "static_site" {
    bucket = "cloud-infra-boot-static-site"

    tags = {
        Name        = "CloudInfraBoot"
        Environment = "Dev"
    }

}

resource "aws_s3_bucket_versioning" "static_site_versioning" {
    bucket = aws_s3_bucket.static_site.id

    versioning_configuration {
        status = "Enabled"
    }
}