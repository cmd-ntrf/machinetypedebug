data "external" "machine_type" {
  program  = ["bash", "machine_type.sh"]
  query    = {
    machine_type = "n2-standard-2"
  }
}
output "vcpus" {
  value = data.external.machine_type.result["vcpus"]
}