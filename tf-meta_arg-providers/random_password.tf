# Generate a random password for SQL Instance
resource "random_string" "tst_sql_pwd" {
  provider = random

  length  = 16
  special = true
}

# Generated output
output "generated_pwd" {
  value     = random_string.tst_sql_pwd.result
  sensitive = true
}