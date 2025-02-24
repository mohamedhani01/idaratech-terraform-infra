resource "google_kms_crypto_key" "default" {
  name            = "${var.project_name}-tf-state-key"
  key_ring        = var.key_ring_id
  purpose         = "ENCRYPT_DECRYPT"
  rotation_period =  "${var.rotation_period_days * 86400}s"
  version_template {
    algorithm =  "GOOGLE_SYMMETRIC_ENCRYPTION"
    protection_level = "SOFTWARE"

  }
  lifecycle {
    prevent_destroy = true
  }
}
resource "google_kms_crypto_key_iam_binding" "default" {
  crypto_key_id =   google_kms_crypto_key.default.id
  role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
  members = [
    "serviceAccount:service-${data.google_project.current.number}@gs-project-accounts.iam.gserviceaccount.com",
  ]
}