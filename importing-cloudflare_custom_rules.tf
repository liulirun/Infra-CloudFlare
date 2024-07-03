resource "cloudflare_firewall_rule" "terraform_managed_resource_d8fc57e348fe4ea9b82d5b7580c030f3" {
  action      = "js_challenge"
  description = "first_rule"
  filter_id   = "18da4c224db14cfaba7cb4fbc460d608"
  paused      = false
  zone_id     = "8f0b8c4abfb8b870fce5c65aa7c3f0d7"
}

