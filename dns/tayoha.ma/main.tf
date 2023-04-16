resource "cloudflare_record" "apex" {
  zone_id = var.zone_id
  name    = "@"
  value   = "54.36.167.38"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  name    = "www"
  value   = "54.36.167.38"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "autodiscover" {
  zone_id = var.zone_id
  name    = "autodiscover"
  value   = "autodiscover.outlook.com"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "enterpriseenrollment" {
  zone_id = var.zone_id
  name    = "enterpriseenrollment"
  value   = "enterpriseenrollment-s.manage.microsoft.com"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "enterpriseregistration" {
  zone_id = var.zone_id
  name    = "enterpriseregistration"
  value   = "enterpriseregistration.windows.net"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "mx" {
  zone_id  = var.zone_id
  name     = "@"
  value    = "tayoha-ma.mail.protection.outlook.com"
  type     = "MX"
  proxied  = false
  priority = 0
}

resource "cloudflare_record" "dmarc" {
  zone_id = var.zone_id
  name    = "_dmarc"
  value   = "v=DMARC1; p=quarantine; rua=mailto:char@tayoha.ma"
  type    = "TXT"
  proxied = false
}

resource "cloudflare_record" "spf" {
  zone_id = var.zone_id
  name    = "@"
  value   = "v=spf1 include:spf.protection.outlook.com ~all"
  type    = "TXT"
  proxied = false
}

resource "cloudflare_record" "microsoft_validate" {
  zone_id = var.zone_id
  name    = "@"
  value   = "MS=ms32616156"
  type    = "TXT"
  proxied = false
}

resource "cloudflare_record" "keybase" {
  zone_id = var.zone_id
  name    = "@"
  value   = "keybase-site-verification=5bxQSX3EKERDo3Ngjhf096gUMlPnr-hvUoruJGP99a8"
  type    = "TXT"
  proxied = false
}

resource "cloudflare_record" "traceroute" {
  zone_id = var.zone_id
  name    = "trace"
  value   = "54.36.167.38"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "whoami" {
  zone_id = var.zone_id
  name    = "who"
  value   = "54.36.167.38"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "ticketai" {
  zone_id = var.zone_id
  name    = "ticket"
  value   = "54.36.167.38"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "clippy" {
  zone_id = var.zone_id
  name    = "clippy"
  value   = "54.36.167.38"
  type    = "A"
  proxied = true
}
