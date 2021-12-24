# Variable Definition - Project, Region, Zone, Labels
project_id      = "tf-training-anupam"
resource_region = "us-central1"
resource_zone   = "us-central1-a"

# Variable Definition - IaaS/PaaS/SaaS Resources
vpc_name              = "fdn-tst-vpc-01"
auto_create           = "false"
delete_default_routes = false

subnet_data = {
  "fdn-tst-subnet-01" = "10.0.40.0/24"
  "fdn-tst-subnet-02" = "10.0.42.0/24"
}