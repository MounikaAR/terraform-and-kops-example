variable "environment_name" { }
variable "vpc_cidr" { }
variable "availability_zones" { type = "list" }
variable "public_subnets" { type = "list" }
variable "private_subnets" { type = "list" }
variable "number_of_cassandra_seeds" { }
variable "cassandra_instance_type" { }
variable "cassandra_seed_ips" { type = "list" }
variable "ssh_public_key" { }

module "strata_snap" {
  source = "../../../"
  environment_name = "${var.environment_name}"
  vpc_cidr = "${var.vpc_cidr}"
  availability_zones = "${var.availability_zones}"
  public_subnets = "${var.public_subnets}"
  private_subnets = "${var.private_subnets}"
  number_of_cassandra_seeds = "${var.number_of_cassandra_seeds}"
  cassandra_instance_type = "${var.cassandra_instance_type}"
  cassandra_seed_ips = "${var.cassandra_seed_ips}"
  ssh_public_key = "${var.ssh_public_key}"
}