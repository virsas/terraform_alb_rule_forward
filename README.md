# terraform_alb_rule_forward

Terraform module to create AWS loadbalancer rule to forward traffic to target group

##  Dependencies

- ALB listener - <https://github.com/virsas/terraform_alb_listener_ssl>
- ALB listener - <https://github.com/virsas/terraform_alb_listener_nonssl>
- ALB target group - <https://github.com/virsas/terraform_alb_target_ip>

## Files

- None

## Terraform example

``` terraform
##############
# Variable
##############
# not needed

##############
# Module
##############
module "alb_rl_fw_example_2_api" {
  source = "git::https://github.com/virsas/terraform_alb_rule_forward.git?ref=v1.0.0"
  listener = module.alb_listener_main_https.arn
  target = module.alb_tg_api.arn
  host = "api.example.org"
  path = "/*"
  priority = 1
}
```