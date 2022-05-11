resource "vultr_instance" "freebsd" {
  plan        = "vhf-2c-4gb"
  region      = data.vultr_region.ny.id
  os_id       = data.vultr_os.freebsd.id
  label       = "freebsd"
  tags        = ["runbsd"]
  hostname    = "freebsd.mydomain.tld"
  ssh_key_ids = [vultr_ssh_key.pub_key.id]
}

output "freebsd_main_ip" {
  value = vultr_instance.freebsd.main_ip
}
