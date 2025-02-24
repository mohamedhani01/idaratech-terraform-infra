locals {
  project_config = yamldecode(file("../../config/project.yaml"))
  network_config = yamldecode(file("../../config/network.yaml"))
}
