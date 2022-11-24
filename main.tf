provider "google" {
  project = "burner-chsaira"
  region  = var.region
  zone    = "us-central1-a"
}

#resource <resource-type> <resource-name>
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = "e2-micro"
  tags         = ["webserver", "healthcare"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {

    }
  }
}
