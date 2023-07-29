provider "uptimerobot" {
  api_key = var.uptimerobot_api_key
}

provider "ovh" {
  endpoint           = var.ovh_endpoint
  application_key    = var.ovh_application_key
  application_secret = var.ovh_application_secret
  consumer_key       = var.ovh_consumer_key
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}