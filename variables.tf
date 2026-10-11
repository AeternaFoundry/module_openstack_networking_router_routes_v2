variable "networking_router_routes_v2s" {
  description = <<EOT
Map of networking_router_routes_v2s, attributes below
Required:
    - router_id
Optional:
    - region
    - routes (block):
        - destination_cidr (required)
        - next_hop (required)
EOT

  type = map(object({
    router_id = string
    region    = optional(string)
    routes = optional(list(object({
      destination_cidr = string
      next_hop         = string
    })))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

