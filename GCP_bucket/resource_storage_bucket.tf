

resource "google_storage_bucket" "storage-bucket" {
  name                        = var.bucket-name
  location                    = var.location
  storage_class               = "STANDARD"
  force_destroy               = true
  uniform_bucket_level_access = true
}
