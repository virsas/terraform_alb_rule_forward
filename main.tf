provider "aws" {
  region = var.region
}

resource "aws_lb_listener_rule" "forward" {
  listener_arn = var.listener

  action {
    type             = "forward"
    target_group_arn = var.target
  }

  condition {
    path_pattern {
      values = [var.path]
    }
  }

  condition {
    host_header {
      values = [var.host]
    }
  }
}