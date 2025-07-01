# terraform-config-fleet

Terraform for Corelight's Fleet Manager Configuration.

## Usage

```terraform
module "fleet_config" {
  source = "github.com/corelight/terraform-config-fleet"

  fleet_certificate      = file("path/to/cert.pem")
  fleet_sensor_license   = file("path/to/license.txt")
  api_password           = "<API password for Fleet configuration>"
  fleet_password         = "<password for the Fleet user>"
  fleet_username         = "<username for the Fleet user>"

  # Optional - RADIUS Authentication
  radius_enable         = true
  radius_address        = "<RADIUS server address:port>"
  radius_shared_secret  = "<RADIUS shared secret>"

  # Optional - Fleet Version
  fleet_version         = "28.2.2"
}
```

## Deployment

All variables for this module have default values that can be overwritten
to meet your naming and compliance standards.

Deployment examples can be found [here](examples).

## License

The project is licensed under the MIT license.

[MIT]: LICENSE