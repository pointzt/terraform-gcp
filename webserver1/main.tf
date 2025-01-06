
# Create a Google Compute instance

resource "google_compute_instance" "default" {
  name         = "gary-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-arm64-v20241219"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
