# Infrastructure

Terraform configuration for Clawdbot's static site.

## Quick Deploy

```bash
cd infrastructure

# Copy and edit your config
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your bucket name

# Deploy
terraform init
terraform plan
terraform apply
```

## What This Creates

- S3 bucket configured for static website hosting
- Public access policy for web serving
- Optional: CloudFront distribution for HTTPS

## Files

- `main.tf` - Main infrastructure configuration
- `variables.tf` - Input variables
- `outputs.tf` - Output values (website URL, etc.)
- `site/` - Static website files (index.html, error.html)

## After Deploy

1. Note the `website_url` output
2. Update the landing page content in `site/index.html` as needed
3. Re-run `terraform apply` to update

## Custom Domain (Optional)

If you have a domain and want HTTPS:
1. Set `enable_cloudfront = true`
2. Add ACM certificate configuration
3. Add Route53 records

For now, the S3 website endpoint works fine.
