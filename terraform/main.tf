terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=3.0"
    }
  }
  required_version = ">=0.14.9"
}

provider "aws" {
  version = "~>3.0"
  region  = "us-east-1"
}

backend "s3" {
       bucket = "labs3site"
       key    = "index.html"
       region = "east-us-1"
}

resource "aws_s3_bucket" "s3Bucket" {
  bucket = "labs3site"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }

  policy = <<EOF
{
  "Id" : "MakePublic",
  "Version" : "2012-10-17",
  "Statement" : [
    {
      "Action" : [
        "s3:GetObject"
      ],
      "Effect" : "Allow",
      "Resource" : "arn:aws:s3:::labs3site/*",
      "Principal" : "*"
    }
  ]
}
EOF
}
