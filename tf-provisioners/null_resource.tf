# null resource to execute local_exec provisioner
resource "null_resource" "tst_execution" {

  triggers = {
    always_run = "${timestamp()}"
  }

  # local-exec for linux os
  provisioner "local-exec" {
    when        = create
    command     = "gcloud config get-value project > project-details.txt"
    working_dir = "${path.module}/reports/"
  }

  /*
  # local-exec for windows os
  provisioner "local-exec" {
    when        = create
    command     = "gcloud config get-value project > project-details.txt"
    working_dir = "${path.module}/reports/"
  }
  */
}