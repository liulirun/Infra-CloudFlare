terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = "??"
}

data "cloudflare_rulesets" "example" {
  zone_id = "8f0b8c4abfb8b870fce5c65aa7c3f0d7"
  # filter {
  #   name = ".*OWASP.*"
  # }
}
