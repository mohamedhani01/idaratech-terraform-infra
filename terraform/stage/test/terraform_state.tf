module "tf_state_bucket" {
    source = "../../../terraform-modules/terraform_state_bucket"
    project_name = "idaratech"
    environment = "stage"
    location = data.google_client_config.current.region
    key_ring_id = google_kms_key_ring.default.id
}