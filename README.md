# terraform-aws_rds_cluster

A terraform module for managing RDS instances

* Assumes you're making your instances in a VPC

# Module Input Variables

Defaults:

- `engine` - The type of RDS isntance you want to use. Defaults to mysql
- `engine_version` - The RDS version you want to use. Defaults to 5.7.17
- `instance_class` - The RDS instance class. Defaults to db.m4.large
- `availability_zone` - The availability zones your node will launch into. Defaults to ca-central-1a
- `multi_az` - Specifies if the RDS instance is multi-AZ. Defaults to yes
- `port` - RDS port. Defaults to 3306
- `vpc_security_group_ids` - VPC security group ID for cluster.
- `db_subnet_group_name` - Subnet group name for cluster. Defaults to rds-main
- `parameter_group_name` - Parameter group name for cluster. Defaults to default.mysql5.7
- `allocated_storage` - The amount of storage for your RDS instance. Defaults to 10

Required:

- `name` - Name of the RDS instance
- `username` - Username for the RDS instance
- `password` - Password for the RDS instance

# Module Outputs

- `name` - Name of the instance

# Usage

You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. main.tf

```
module "instance" {
  source = "git::ssh://git@github.com/telusdigital/terraform-aws_rds_cluster"

  name = "my-rds-instance"
  username = "my-username"
  password = "my-password"
  node_type = "db.m4.large"
}
```

# Authors

Created and maintained by [Alex Podobnik](https://github.com/alexandarp) (alexandar.podobnik@telus.com)
