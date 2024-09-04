# ------------------------------------------------------------------------------
# This CNAME record directs any requests for the legacy rules.ncats subdomain to
# the current rules.vm subdomain.  Note that DNS for the rules.vm subdomain is
# handled in cisagov/publish-egress-ip-terraform.
# ------------------------------------------------------------------------------

resource "aws_route53_record" "rules_ncats_CNAME" {
  provider = aws.route53resourcechange

  name    = "rules.ncats.${aws_route53_zone.cyber_dhs_gov.name}"
  records = ["rules.vm.${aws_route53_zone.cyber_dhs_gov.name}"]
  ttl     = 300
  type    = "CNAME"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}
