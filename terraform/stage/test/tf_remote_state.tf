terraform {
  backend "gcs" {
    bucket  = "idaratech-stage-terraform-state"
    kms_encryption_key = "projects/idaratech-stage/locations/me-central2/keyRings/idaratech-keyring/cryptoKeys/idaratech-tf-state-key"
  }
}