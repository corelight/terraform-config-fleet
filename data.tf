data "cloudinit_config" "config" {
  gzip          = var.gzip_config
  base64_encode = var.base64_encode_config

  part {
    content_type = "text/cloud-config"
    content = templatefile("${path.module}/cloud-config/init.tpl", {
      fleet_version        = var.fleet_version
      fleet_certificate    = var.fleet_certificate
      fleet_sensor_license = var.fleet_sensor_license
      api_password         = var.api_password
      fleet_password       = var.fleet_password
      fleet_username       = var.fleet_username

      radius_enable        = var.radius_enable
      radius_address       = var.radius_address
      radius_shared_secret = var.radius_shared_secret
    })
    filename = "fleet-init.yaml"
  }
}