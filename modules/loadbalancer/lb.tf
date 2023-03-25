resource "aws_lb" "alb" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = var.type
  security_groups    = var.sec_group
  subnets            = var.subnets

  enable_deletion_protection = true

 

  tags = {
    Environment = "Test"
  }
}

