terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
      # DigitalOcean offers a simple and reliable cloud hosting solution that enables 
      # businesses to get their website or application up and running quickly.
    }
  }
}

provider "digitalocean" {
  # Configuration options
}