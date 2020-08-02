resource "digitalocean_database_cluster" "postgres-cluster-1"{
	name = "postgres-cluster-1"
	engine = "pg"
	version = "11"
	size = "db-s-1vcpu-1gb"
	region = "sgp1"
	node_count = 1
}
resource "digitalocean_database_db" "postgres-db-1"{
	cluster_id = digitalocean_database_cluster.postgres-cluster-1.id
	name = "netbox"
}
resource "digitalocean_database_user" "postgres-user-1"{
	cluster_id = digitalocean_database_cluster.postgres-cluster-1.id 
	name ="netbox"
}
