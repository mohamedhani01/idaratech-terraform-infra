resource "google_kms_key_ring" "default" {
  name     = "idaratech-keyring"
  location = data.google_client_config.current.region
}