resource "aws_launch_template" "app" {
  name_prefix   = "${local.name_prefix}-app-"
  ami = var.tamplate_ami_value
  instance_type = var.app_instance_type

  vpc_security_group_ids = [aws_security_group.app_sg.id]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    dnf update -y
    dnf install -y httpd
    systemctl enable httpd
    systemctl start httpd
    echo "Hello from Terraform ASG" > /var/www/html/index.html
  EOF
  )

  tag_specifications {
    resource_type = "instance"

    tags = merge(local.common_tags, {
      Name = "${local.name_prefix}-app"
      Role = "App"
    })
  }
}