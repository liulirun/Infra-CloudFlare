terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

# ## IMPORTATNT! below is needed for terraform plan, but you do not need this before terraform plan
# ## should change to a module
resource "cloudflare_ruleset" "terraform_managed_resource_a588c52133e243ee928d5e4566be3301" {
  kind    = "zone"
  name    = "default"
  phase   = "http_ratelimit"
  zone_id = "8f0b8c4abfb8b870fce5c65aa7c3f0d7"
  rules {
    action      = "block"
    description = "first_rate_limit"
    enabled     = false
    expression  = "(http.request.uri.path eq \"/content\")"
    ratelimit {
      characteristics     = ["ip.src", "cf.colo.id"]
      mitigation_timeout  = 10
      period              = 10
      requests_per_period = 10
    }
  }
}

resource "cloudflare_ruleset" "terraform_managed_resource_9236776f6d3c4e41a3f70dcf636a0df2" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_firewall_custom"
  zone_id = "8f0b8c4abfb8b870fce5c65aa7c3f0d7"
  rules {
    action      = "js_challenge"
    description = "first_rule"
    enabled     = true
    expression  = "(ip.geoip.country eq \"AF\")"
  }
}
