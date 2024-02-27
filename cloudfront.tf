resource "aws_cloudfront_distribution" "spotmusic_cdn" {
  origin {
    domain_name = aws_s3_bucket.spotmusic_bucket.bucket_regional_domain_name
    origin_id   = "S3-spotmusicBucket"
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "CDN for SpotMusic"
  default_root_object = "index.html"
}
