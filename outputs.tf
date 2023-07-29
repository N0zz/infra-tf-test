output "dns_records" {
    value = nonsensitive(try(module.ovh.dns_records, ""))
}
output "alert_contact" {
    value = nonsensitive(try(module.uptimerobot.alert_contact, ""))
}
output "https_monitors" {
    value = nonsensitive(try(module.uptimerobot.https_monitors, ""))
}
output "custom_monitors" {
    value = nonsensitive(try(module.uptimerobot.custom_monitors, ""))
}
output "status_page" {
    value = nonsensitive(try(module.uptimerobot.status_page, ""))
}
