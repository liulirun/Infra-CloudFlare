

provider "cloudflare" {
  api_token = var.cloudflare_api_token
  rps       = 3
}

module "lee-site-waf" {
  source               = "./modules/lee-site"
  cloudflare_api_token = var.cloudflare_api_token
}
