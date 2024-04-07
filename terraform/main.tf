terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=5.44"
    }
  }

  required_version = ">=0.14.9"

provider "aws" {
  version = "~>3.0"
  region  = "east-us-1"
}

backend "s3" {
       bucket = "labs3site"
       key    = "index.html"
       region = "east-us-1"
   }
}

}



resource "aws_s3_bucket" "s3Bucket" {
     bucket = "labs3site"
     acl       = "public-read"

     policy  = <<EOF
{
     "id" : "MakePublic",
   "version" : "2012-10-17",
   "statement" : [
      {
         "action" : [
             "s3:GetObject"
          ],
         "effect" : "Allow",
         "resource" : "arn:aws:s3:::labs3site/*",
         "principal" : "*"
      }
    ]
  }
EOF

   website {
       index_document = "index.html"
   }
}
