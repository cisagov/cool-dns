# ------------------------------------------------------------------------------
# Resource records that support VINCE-NT (Vulnerability Information and
# Coordination Environment - New Technology)

# ------------------------------------------------------------------------------
# Development entries
# ------------------------------------------------------------------------------

resource "aws_route53_record" "vincent_dev_CNAME" {
  provider = aws.route53resourcechange

  name    = "dev.vincent.${aws_route53_zone.cyber_dhs_gov.name}"
  records = ["dmm9ihx0h3npb.cloudfront.net"]
  ttl     = 300
  type    = "CNAME"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}

# ------------------------------------------------------------------------------
# Staging entries
# ------------------------------------------------------------------------------

resource "aws_route53_record" "vincent_stage_CNAME" {
  provider = aws.route53resourcechange

  name    = "staging.vincent.${aws_route53_zone.cyber_dhs_gov.name}"
  records = ["vincent-stage-1522298475.us-gov-west-1.elb.amazonaws.com"]
  ttl     = 300
  type    = "CNAME"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}
