// Variables definition
project_id                = "tidy-interface-421310"
default_region            = "us-central1"
default_zone              = "us-central1-a"
terraform_service_account = "infra-prov-svc-acc@tidy-interface-421310.iam.gserviceaccount.com"

vpc_name                                  = "fdn-tst-vpc-01"
description                               = null
auto_create_subnetworks                   = "false"
delete_default_routes                     = false
network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
