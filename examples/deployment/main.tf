locals {
  fleet_certificate    = file("<path_to>/fleet.pem")
  fleet_sensor_license = file("<path_to>/license.txt")
  api_password         = "changeme-api"
  fleet_password       = "changeme-fleet"
  fleet_username       = "fleetadmin"

  # Optional - RADIUS
  radius_enable        = true
  radius_address       = "192.168.1.10:1812"
  radius_shared_secret = "supersecret"

  # Optional - Fleet Version
  fleet_version = "28.2.2"
}

module "fleet_config" {
  source = "../../"

  fleet_certificate    = local.fleet_certificate
  fleet_sensor_license = local.fleet_sensor_license
  api_password         = local.api_password
  fleet_password       = local.fleet_password
  fleet_username       = local.fleet_username

  # Optional - RADIUS
  radius_enable        = local.radius_enable
  radius_address       = local.radius_address
  radius_shared_secret = local.radius_shared_secret

  # Optional - Fleet Version
  fleet_version = local.fleet_version
}