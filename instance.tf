resource "aws_db_instance" "default" {
  name = "${var.name}"
  username = "${var.username}"
  password = "${var.password}"
  engine = "${var.engine}"
  engine_version = "${var.engine_version}"
  instance_class = "${var.instance_class}"
  availability_zone = "${var.availability_zone}"
  multi_az = "${var.multi_az}"
  port = "${var.port}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  db_subnet_group_name = "${var.db_subnet_group_name}"
  parameter_group_name = "${var.parameter_group_name}"
  allocated_storage = "${var.allocated_storage}"
}
