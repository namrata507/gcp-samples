resource "google_compute_network" "vpc_network" {
  name                    = "vpc-network"
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "subnetwork" {
  name                     = "vpc-subnetwork"
  ip_cidr_range            = "10.2.0.0/22"
  region                   = var.region
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = true
}