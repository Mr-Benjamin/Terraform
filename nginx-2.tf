resource "digitalocean_droplet" "nginx-2"{
	image = "ubuntu-18-04-x64"
	name = "nginx-2"
	region = "sgp1"
	size = "s-1vcpu-1gb"
	private_networking = true
}