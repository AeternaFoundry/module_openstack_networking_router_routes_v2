output "networking_router_routes_v2s_id" {
  description = "Map of id values across all networking_router_routes_v2s, keyed the same as var.networking_router_routes_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_networking_router_routes_v2.networking_router_routes_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networking_router_routes_v2s_region" {
  description = "Map of region values across all networking_router_routes_v2s, keyed the same as var.networking_router_routes_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_networking_router_routes_v2.networking_router_routes_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "networking_router_routes_v2s_router_id" {
  description = "Map of router_id values across all networking_router_routes_v2s, keyed the same as var.networking_router_routes_v2s except keys with no router_id are omitted"
  value       = { for k, v in openstack_networking_router_routes_v2.networking_router_routes_v2s : k => v.router_id if v.router_id != null && length(v.router_id) > 0 }
}
output "networking_router_routes_v2s_routes" {
  description = "Map of routes values across all networking_router_routes_v2s, keyed the same as var.networking_router_routes_v2s except keys with no routes are omitted"
  value       = { for k, v in openstack_networking_router_routes_v2.networking_router_routes_v2s : k => v.routes if v.routes != null && length(v.routes) > 0 }
}

