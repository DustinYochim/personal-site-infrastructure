# tell Terraform that you want to use the DigitalOcean provider, and instruct Terraform where to find it
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {} # my DigitalOcean Personal Access Token
variable "pvt_key" {} # private key location, so Terraform can use it to log in to new Droplets and install NGinx

# Configure the DigitalOcean provider and specify the credentials for my DigitalOcean account
provider "digitalocean" {
  token = var.do_token
}

# Have Terraform automatically add SSH key to any new Droplets you create
data "digitalocean_ssh_key" "Dustins-MacBook-Air" {
  name = " terraform "
}
