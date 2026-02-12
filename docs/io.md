## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allow | (Optional) The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection. | `list(any)` | `[]` | no |
| description | Creates Firewall rule targetting tagged instances | `string` | `"Managed by clouddrove"` | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| google\_compute\_firewall\_enabled | n/a | `bool` | `true` | no |
| label\_order | Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] . | `list(any)` | `[]` | no |
| module\_enabled | n/a | `bool` | `true` | no |
| name | Name of the resource. Provided by the client when the resource is created. | `string` | `""` | no |
| network | The name or self\_link of the network to attach this firewall to. | `string` | `""` | no |
| ports | n/a | `list(number)` | `[]` | no |
| project\_id | The project in which the resource belongs. If it is not provided, the provider project is used. | `string` | `""` | no |
| protocol | The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. | `string` | `""` | no |
| source\_ranges | IP que será liberado para acessar | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| source\_tags | Nomes de tags que serão utilizadas para utilizar com esta regra de firewall | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Name of the resource. Provided by the client when the resource is created. |
| name | an identifier for the resource with format |
| self\_link | The URI of the created resource. |

