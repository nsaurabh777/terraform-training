module "my_modules" {
  source        = "./modules"
  bucket_name   = "my-demo-cloud-bkt-777"
  instance_name = "my-module-instance"
  instance_type = "e2-micro"
  network_interface = {
    network = google_compute_network.vpc_network.self_link
  }
}

resource "google_compute_network" "vpc_network" {
  name = "my-module-network"
}
