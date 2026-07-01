# ⚠️ DEPRECATED — This repository has moved

> **This repository is no longer maintained and has been archived (read-only).**
> All Corelight Terraform modules now live in the
> **[Corelight Terraform monorepo](https://github.com/corelight/terraform)**.

**New location:** [`modules/_shared/config/fleet`](https://github.com/corelight/terraform/tree/main/modules/_shared/config/fleet)

**Update your module `source`** (replace `<version>` with a [release tag](https://github.com/corelight/terraform/releases), e.g. `v29.0.5-5`):

```terraform
module "fleet_config" {
  source = "github.com/corelight/terraform//modules/_shared/config/fleet?ref=<version>"
}
```

See the [monorepo README](https://github.com/corelight/terraform#readme) for the full module list.

---

# terraform-config-fleet

Terraform for Corelight's Fleet Manager Configuration.

## Usage

```terraform
module "fleet_config" {
  source = "github.com/corelight/terraform-config-fleet"

  fleet_certificate      = file("path/to/cert.pem")
  fleet_sensor_license   = file("path/to/license.txt")
  community_string       = "<community string for sensor pairing>"
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