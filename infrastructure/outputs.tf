output "website_url" {
  description = "URL of the static website"
  value       = "http://${aws_s3_bucket_website_configuration.website.website_endpoint}"
}

output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.website.id
}

output "cloudfront_url" {
  description = "CloudFront distribution URL (if enabled)"
  value       = var.enable_cloudfront ? "https://${aws_cloudfront_distribution.website[0].domain_name}" : "CloudFront not enabled"
}
