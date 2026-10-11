resource "openstack_networking_router_routes_v2" "networking_router_routes_v2s" {
  for_each = var.networking_router_routes_v2s

  router_id = each.value.router_id
  region    = each.value.region

  dynamic "routes" {
    for_each = each.value.routes != null ? each.value.routes : []
    content {
      destination_cidr = routes.value.destination_cidr
      next_hop         = routes.value.next_hop
    }
  }
}

