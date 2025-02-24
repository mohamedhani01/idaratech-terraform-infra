variable force_destroy {
  type        = bool
  default     = false
  description = "force Destroy the bucket and all objects it contains"
}

variable project_name {
  type        = string
}
variable environment {
  type = string
}
variable location {
  type        = string
  description = "location where the bucket will be created, it could be region, multi-region, or dual-region. check this link for more info: https://cloud.google.com/storage/docs/locations"
}

variable key_ring_id{
  type = string
  description = "Key Ring "
}

variable rotation_period_days{
  type = number
  description = "KMS Key Rotation Period in days"
  default = 90
}