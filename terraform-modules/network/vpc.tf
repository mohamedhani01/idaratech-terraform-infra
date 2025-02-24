resource "google_compute_network" "default" {
  project                 =  var.project_id
  name                    = "${var.project_name}-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
  description  = "Main VPC for ${var.project_name}"
  routing_mode = "REGIONAL"
}

resource "google_compute_subnetwork" "gke_subnet" {
  for_each  = toset(var.gke_subnet_cidrs)
  name          = "${var.project_name}-gke-subnet-${index(var.gke_subnet_cidrs,each.value)}"
  ip_cidr_range = each.value
  region        = var.region
  network       = google_compute_network.default.id
  private_ip_google_access  = true
}

resource "google_compute_subnetwork" "app_support_subnet" {
  for_each  = toset(var.app_support_subnet_cidrs)
  name          = "${var.project_name}-app-support-subnet-${index(var.app_support_subnet_cidrs,each.value)}"
  ip_cidr_range = each.value
  region        = var.region
  network       = google_compute_network.default.id
  private_ip_google_access  = true
}



