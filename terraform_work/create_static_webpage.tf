module "web_page_instance" {
  source                  = "./modules/instance_module"
  instance_security_group = ["sg-06ff008ae41909984"]
}

output "url_to_hit" {
  value = "${module.web_page_instance.instance-url-to-hit}"
}