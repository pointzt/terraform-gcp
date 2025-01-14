# Create a Google Cloud Storage Bucket

resource "google_storage_bucket" "terraform_state" {
  name          = "${var.bucket_name}"
  uniform_bucket_level_access = true
}
