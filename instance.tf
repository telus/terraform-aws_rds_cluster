resource "aws_db_instance" "default" {
  name = "${var.name}"
  username = "${var.username}"
  password = "${var.password}"
  engine = "${var.engine}"
  engine_version = "${var.engine_version}"
  instance_class = "${var.node_type}"
  availability_zone = "${var.availability_zone}"
  port = "${var.port}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  db_subnet_group_name = "${var.db_subnet_group_name}"
  parameter_group_name = "${var.parameter_group_name}"
  allocated_storage = "${var.allocated_storage}"
}
