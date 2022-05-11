data "vultr_region" "ny" {
  filter {
    name   = "city"
    values = ["New Jersey"]
  }
}

data "vultr_os" "freebsd" {
  filter {
    name   = "name"
    values = ["FreeBSD 13 x64"]
  }
}
