

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

module "lee-site-waf" {
  source               = "./modules/lee-site"
  cloudflare_api_token = var.cloudflare_api_token
}
