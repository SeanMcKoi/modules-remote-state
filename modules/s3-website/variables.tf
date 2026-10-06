terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.1"
    }
  }
}
variable "bucket_name" {
  description = "Name of the S3 bucket"
  type = string
}

variable "tags" {
  description = "Tags to apply to the resources"
  type = map(string)
  default = {}
}

variable "enable_versioning" {
  description = "Enable or disable S3 bucket versioning"
  type        = bool
  default     = false
}
