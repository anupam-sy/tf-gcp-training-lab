// Resource outputs
output "tst_vpc_name" {
  value       = module.tst_vpc.network_name
  description = "The name of the created vpc network."
}

output "tst_vpc_id" {
  value       = module.tst_vpc.network_id
  description = "The ID of the created vpc network."
}