
# Create a Google Compute instance
resource "google_compute_instance" "example" {
  name          = "gary-vm"
  machine_type  = "e2-micro"
  zone          = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "ubuntu-1604-lts"
    }
  }
  
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
  
  tags = ["terraform-example"]
  
  metadata_startup_script = "echo 'Hello, World' > index.html ; nohup busybox httpd -f -p 8080 &"
}
