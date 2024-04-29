# ------------------------------------------------------------------------------
# Resource records that support ReadySetCyber site cloudfront endpoints and application.
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Prod entries
# ------------------------------------------------------------------------------

# The hosted_zone_id for the below records comes from https://docs.aws.amazon.com/general/latest/gr/elb.html
# (ALBs in us-gov-west-1 region)

resource "aws_route53_record" "ready_set_cyber_prod_digicert_CAA" {
  provider = aws.route53resourcechange
  zone_id  = aws_route53_zone.cyber_dhs_gov.zone_id
  name     = "readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type     = "CAA"
  ttl      = 3600
  records  = ["0 issue \"digicert.com\""]
}



# The hosted_zone_id for the below records comes from https://docs.aws.amazon.com/general/latest/gr/elb.html
# (ALBs in us-gov-west-1 region)
resource "aws_route53_record" "ready_set_cyber_prod_A" {
  provider = aws.route53resourcechange

  alias {
    name                   = "crossfeed-prod-1638162291.us-gov-west-1.elb.amazonaws.com."
    zone_id                = "Z33AYJ8TM3BH4J"
    evaluate_target_health = false
  }
  name    = "readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type    = "A"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}

resource "aws_route53_record" "ready_set_cyber_prod_AAAA" {
  provider = aws.route53resourcechange

  alias {
    name                   = "crossfeed-prod-1638162291.us-gov-west-1.elb.amazonaws.com."
    zone_id                = "Z33AYJ8TM3BH4J"
    evaluate_target_health = false
  }
  name    = "readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type    = "AAAA"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}



# ------------------------------------------------------------------------------
# Prod API entries
# ------------------------------------------------------------------------------
resource "aws_route53_record" "api_ready_set_cyber_prod_digicert_CAA" {
  provider = aws.route53resourcechange
  zone_id  = aws_route53_zone.cyber_dhs_gov.zone_id
  name     = "api.readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type     = "CAA"
  ttl      = 3600
  records  = ["0 issue \"digicert.com\""]
}

resource "aws_route53_record" "api_ready_set_cyber_prod_A" {
  provider = aws.route53resourcechange

  alias {
    name                   = "crossfeed-prod-1638162291.us-gov-west-1.elb.amazonaws.com."
    zone_id                = "Z33AYJ8TM3BH4J"
    evaluate_target_health = false
  }
  name    = "api.readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type    = "A"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}

resource "aws_route53_record" "api_ready_set_cyber_prod_AAAA" {
  provider = aws.route53resourcechange

  alias {
    name                   = "crossfeed-prod-1638162291.us-gov-west-1.elb.amazonaws.com."
    zone_id                = "Z33AYJ8TM3BH4J"
    evaluate_target_health = false
  }
  name    = "api.readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type    = "AAAA"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}



# ------------------------------------------------------------------------------
# Staging entries
# ------------------------------------------------------------------------------
resource "aws_route53_record" "ready_set_cyber_staging_digicert_CAA" {
  provider = aws.route53resourcechange
  zone_id  = aws_route53_zone.cyber_dhs_gov.zone_id
  name     = "staging.readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type     = "CAA"
  ttl      = 3600
  records  = ["0 issue \"digicert.com\""]
}
resource "aws_route53_record" "staging_ready_set_cyber_staging_A" {
  provider = aws.route53resourcechange

  alias {
    name                   = "crossfeed-stage-1792947306.us-gov-west-1.elb.amazonaws.com."
    zone_id                = "Z33AYJ8TM3BH4J"
    evaluate_target_health = false
  }
  name    = "staging.readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type    = "A"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}

resource "aws_route53_record" "staging_ready_set_cyber_prod_AAAA" {
  provider = aws.route53resourcechange

  alias {
    name                   = "crossfeed-stage-1792947306.us-gov-west-1.elb.amazonaws.com."
    zone_id                = "Z33AYJ8TM3BH4J"
    evaluate_target_health = false
  }
  name    = "staging.readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type    = "AAAA"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}


# ------------------------------------------------------------------------------
# Staging API entries
# ------------------------------------------------------------------------------
resource "aws_route53_record" "api_ready_set_cyber_staging_digicert_CAA" {
  provider = aws.route53resourcechange
  zone_id  = aws_route53_zone.cyber_dhs_gov.zone_id
  name     = "api.staging.readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type     = "CAA"
  ttl      = 3600
  records  = ["0 issue \"digicert.com\""]
}

resource "aws_route53_record" "api_staging_ready_set_cyber_staging_A" {
  provider = aws.route53resourcechange

  alias {
    name                   = "crossfeed-stage-1792947306.us-gov-west-1.elb.amazonaws.com."
    zone_id                = "Z33AYJ8TM3BH4J"
    evaluate_target_health = false
  }
  name    = "api.staging.readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type    = "A"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}

resource "aws_route53_record" "api_staging_ready_set_cyber_staging_AAAA" {
  provider = aws.route53resourcechange

  alias {
    name                   = "crossfeed-stage-1792947306.us-gov-west-1.elb.amazonaws.com."
    zone_id                = "Z33AYJ8TM3BH4J"
    evaluate_target_health = false
  }
  name    = "api.staging.readysetcyber.${aws_route53_zone.cyber_dhs_gov.name}"
  type    = "AAAA"
  zone_id = aws_route53_zone.cyber_dhs_gov.zone_id
}
