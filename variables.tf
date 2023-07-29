variable "dns_records" {
    type = map
    default = {
        test_kris_ovh = {
            zone      = "kris.ovh"
            subdomain = "test"
            fieldtype = "A"
            ttl       = "300"
            target    = "130.61.181.137"
        }
    }
}

variable "custom_monitors" {
    type = map

    default = {
        ssh_test_kris_ovh = {
            url           = "test.kris.ovh"
            name          = "SSH test.kris.ovh"
            type          = "port"
            sub_type      = "custom"
            port          = "22"
        }
    }
}