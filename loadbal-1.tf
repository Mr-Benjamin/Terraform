resource "digitalocean_droplet" "loadbal-1"{
	image = "ubuntu-18-04-x64"
	name = "loadbal-1"
	region = "sgp1"
	size = "s-1vcpu-1gb"
	private_networking = true
}
