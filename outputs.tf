output "dns_records" {
    value = nonsensitive(module.ovh.dns_records)
}
output "alert_contact" {
    value = nonsensitive(module.uptimerobot.alert_contact)
}
output "https_monitors" {
    value = nonsensitive(module.uptimerobot.https_monitors)
}
output "custom_monitors" {
    value = nonsensitive(module.uptimerobot.custom_monitors)
}
output "status_page" {
    value = nonsensitive(module.uptimerobot.status_page)
}
