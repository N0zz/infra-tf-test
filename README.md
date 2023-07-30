<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.4 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.11.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | 0.32.0 |
| <a name="requirement_uptimerobot"></a> [uptimerobot](#requirement\_uptimerobot) | 0.8.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ovh"></a> [ovh](#module\_ovh) | git@github.com:N0zz/infra-tfmod-ovh.git | test |
| <a name="module_uptimerobot"></a> [uptimerobot](#module\_uptimerobot) | git@github.com:N0zz/infra-tfmod-uptimerobot.git | test |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_monitors"></a> [custom\_monitors](#input\_custom\_monitors) | n/a | `map(any)` | <pre>{<br>  "ssh_test_kris_ovh": {<br>    "name": "SSH test.kris.ovh",<br>    "port": "22",<br>    "sub_type": "custom",<br>    "type": "port",<br>    "url": "test.kris.ovh"<br>  }<br>}</pre> | no |
| <a name="input_dns_records"></a> [dns\_records](#input\_dns\_records) | n/a | `map(any)` | <pre>{<br>  "test_kris_ovh": {<br>    "fieldtype": "A",<br>    "subdomain": "test",<br>    "target": "130.61.181.137",<br>    "ttl": "300",<br>    "zone": "kris.ovh"<br>  },<br>  "test_temida_czestochowa_pl": {<br>    "fieldtype": "A",<br>    "subdomain": "test",<br>    "target": "130.61.181.137",<br>    "ttl": "300",<br>    "zone": "temida-czestochowa.pl"<br>  }<br>}</pre> | no |
| <a name="input_infra_environment"></a> [infra\_environment](#input\_infra\_environment) | n/a | `string` | `"test"` | no |
| <a name="input_uptimerobot_alert_email"></a> [uptimerobot\_alert\_email](#input\_uptimerobot\_alert\_email) | n/a | `string` | `"disabled"` | no |
<!-- END_TF_DOCS -->