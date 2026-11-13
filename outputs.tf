output "networking_router_routes_v2s_id" {
  description = "Map of id values across all networking_router_routes_v2s, keyed the same as var.networking_router_routes_v2s"
  value       = { for k, v in openstack_networking_router_routes_v2.networking_router_routes_v2s : k => v.id }
}
output "networking_router_routes_v2s_region" {
  description = "Map of region values across all networking_router_routes_v2s, keyed the same as var.networking_router_routes_v2s"
  value       = { for k, v in openstack_networking_router_routes_v2.networking_router_routes_v2s : k => v.region }
}
output "networking_router_routes_v2s_router_id" {
  description = "Map of router_id values across all networking_router_routes_v2s, keyed the same as var.networking_router_routes_v2s"
  value       = { for k, v in openstack_networking_router_routes_v2.networking_router_routes_v2s : k => v.router_id }
}
output "networking_router_routes_v2s_routes" {
  description = "Map of routes values across all networking_router_routes_v2s, keyed the same as var.networking_router_routes_v2s"
  value       = { for k, v in openstack_networking_router_routes_v2.networking_router_routes_v2s : k => v.routes }
}

