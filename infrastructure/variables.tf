variable "aws_region" {
  description = "AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "domain_name" {
  description = "Domain name for the website (also used as bucket name)"
  type        = string
}

variable "enable_cloudfront" {
  description = "Enable CloudFront distribution for HTTPS"
  type        = bool
  default     = false  # Start simple, add CloudFront later if needed
}
