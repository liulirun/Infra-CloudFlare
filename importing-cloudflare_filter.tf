resource "cloudflare_filter" "terraform_managed_resource_18da4c224db14cfaba7cb4fbc460d608" {
  expression = "(ip.geoip.country eq \"AF\")"
  paused     = false
  zone_id    = "8f0b8c4abfb8b870fce5c65aa7c3f0d7"
}

