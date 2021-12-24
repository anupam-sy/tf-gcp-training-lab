# resource block to generate a random hex code for password
resource "random_id" "sbx_password" {
  byte_length = 8
}