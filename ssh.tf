resource "vultr_ssh_key" "pub_key" {
  name    = "pub_key"
  ssh_key = "... you public SSH key here ..."
}
