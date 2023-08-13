module "ovh" {
  source      = "git@github.com:N0zz/infra-tfmod-ovh.git?ref=test"
  dns_records = var.dns_records
}
module "uptimerobot" {
  source                      = "git@github.com:N0zz/infra-tfmod-uptimerobot.git?ref=test"
  infra_environment           = var.infra_environment
  dns_records                 = var.dns_records
  uptimerobot_custom_monitors = var.custom_monitors
  uptimerobot_alert_email      = var.uptimerobot_alert_email
}