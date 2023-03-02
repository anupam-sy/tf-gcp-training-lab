// Variables definition
project_id              = "prj-tf-training"
default_region          = "us-central1"
default_zone            = "us-central1-a"
vpc_name                = "fdn-tst-vpc-01"
auto_create_subnetworks = "false"
delete_default_routes   = false
subnet_name             = ["fdn-tst-subnet-01", "fdn-tst-subnet-02"]
subnet_cidr             = ["10.0.40.0/24", "10.0.42.0/24"]