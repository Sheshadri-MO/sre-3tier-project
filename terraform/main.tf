resource "null_resource" "web1" {
  provisioner "local-exec" {
    command = "vagrant up web1"
  }
}

resource "null_resource" "web2" {
  provisioner "local-exec" {
    command = "vagrant up web2"
  }
}

resource "null_resource" "web3" {
  provisioner "local-exec" {
    command = "vagrant up web3"
  }
}

resource "null_resource" "loadbalancer" {
  provisioner "local-exec" {
    command = "vagrant up loadbalancer"
  }
}
