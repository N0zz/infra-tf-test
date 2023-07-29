variable "environment" {
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
      ttl       = "300"
      target    = "130.61.181.137"
    },
    test2_kris_ovh = {
      zone      = "kris.ovh"
      subdomain = "test2"
      fieldtype = "A"
      ttl       = "300"
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