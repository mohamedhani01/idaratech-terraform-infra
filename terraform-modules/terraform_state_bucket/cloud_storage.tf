resource "google_storage_bucket" "static-site" {
  name          =  "${var.project_name}-${var.environment}-terraform-state"
  location      = var.location
  force_destroy = var.force_destroy
    uniform_bucket_level_access = true

  storage_class = "STANDARD"
  versioning  {
    enabled = true
  }
  encryption  {
    default_kms_key_name = google_kms_crypto_key.default.id
   }
 depends_on =  [google_kms_crypto_key_iam_binding.default]
}