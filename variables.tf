variable "infra_environment" {
  type    = string
  default = "test"
}
variable "uptimerobot_alert_email" {
  type    = string
  default = "disabled"
}
variable "dns_records" {
  type = map(any)
  default = {
    test_kris_ovh = {
      zone      = "kris.ovh"
      subdomain = "test"
      fieldtype = "A"
      ttl       = "3600"
      target    = "130.61.181.137"
    },
    test_temida_czestochowa_pl = {
      zone      = "temida-czestochowa.pl"
      subdomain = "test"
      fieldtype = "A"
      ttl       = "3600"
      target    = "130.61.181.137"
    }
  }
}

variable "custom_monitors" {
  type = map(any)

  default = {
    ssh_test_kris_ovh = {
      url      = "test.kris.ovh"
      name     = "SSH test.kris.ovh"
      type     = "port"
      sub_type = "custom"
      port     = "22"
    }
  }
}