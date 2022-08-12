module "wrapper" {
  source = "../"

  for_each = var.items

  create                               = try(each.value.create, var.defaults.create, true)
  name                                 = try(each.value.name, var.defaults.name, "")
  ami                                  = try(each.value.ami, var.defaults.ami, "")
  associate_public_ip_address          = try(each.value.associate_public_ip_address, var.defaults.associate_public_ip_address, null)
  availability_zone                    = try(each.value.availability_zone, var.defaults.availability_zone, null)
  capacity_reservation_specification   = try(each.value.capacity_reservation_specification, var.defaults.capacity_reservation_specification, {})
  cpu_credits                          = try(each.value.cpu_credits, var.defaults.cpu_credits, null)
  disable_api_termination              = try(each.value.disable_api_termination, var.defaults.disable_api_termination, null)
  ebs_block_device                     = try(each.value.ebs_block_device, var.defaults.ebs_block_device, [])
  ebs_optimized                        = try(each.value.ebs_optimized, var.defaults.ebs_optimized, null)
  enclave_options_enabled              = try(each.value.enclave_options_enabled, var.defaults.enclave_options_enabled, null)
  ephemeral_block_device               = try(each.value.ephemeral_block_device, var.defaults.ephemeral_block_device, [])
  get_password_data                    = try(each.value.get_password_data, var.defaults.get_password_data, null)
  hibernation                          = try(each.value.hibernation, var.defaults.hibernation, null)
  host_id                              = try(each.value.host_id, var.defaults.host_id, null)
  iam_instance_profile                 = try(each.value.iam_instance_profile, var.defaults.iam_instance_profile, null)
  instance_initiated_shutdown_behavior = try(each.value.instance_initiated_shutdown_behavior, var.defaults.instance_initiated_shutdown_behavior, null)
  instance_type                        = try(each.value.instance_type, var.defaults.instance_type, "t3.micro")
  ipv6_address_count                   = try(each.value.ipv6_address_count, var.defaults.ipv6_address_count, null)
  ipv6_addresses                       = try(each.value.ipv6_addresses, var.defaults.ipv6_addresses, null)
  key_name                             = try(each.value.key_name, var.defaults.key_name, null)
  launch_template                      = try(each.value.launch_template, var.defaults.launch_template, null)
  metadata_options                     = try(each.value.metadata_options, var.defaults.metadata_options, {})
  monitoring                           = try(each.value.monitoring, var.defaults.monitoring, false)
  network_interface                    = try(each.value.network_interface, var.defaults.network_interface, [])
  placement_group                      = try(each.value.placement_group, var.defaults.placement_group, null)
  private_ip                           = try(each.value.private_ip, var.defaults.private_ip, null)
  root_block_device                    = try(each.value.root_block_device, var.defaults.root_block_device, [])
  secondary_private_ips                = try(each.value.secondary_private_ips, var.defaults.secondary_private_ips, null)
  source_dest_check                    = try(each.value.source_dest_check, var.defaults.source_dest_check, true)
  subnet_id                            = try(each.value.subnet_id, var.defaults.subnet_id, null)
  tags                                 = try(each.value.tags, var.defaults.tags, {})
  tenancy                              = try(each.value.tenancy, var.defaults.tenancy, null)
  user_data                            = try(each.value.user_data, var.defaults.user_data, null)
  user_data_base64                     = try(each.value.user_data_base64, var.defaults.user_data_base64, null)
  user_data_replace_on_change          = try(each.value.user_data_replace_on_change, var.defaults.user_data_replace_on_change, false)
  volume_tags                          = try(each.value.volume_tags, var.defaults.volume_tags, {})
  enable_volume_tags                   = try(each.value.enable_volume_tags, var.defaults.enable_volume_tags, true)
  vpc_security_group_ids               = try(each.value.vpc_security_group_ids, var.defaults.vpc_security_group_ids, null)
  timeouts                             = try(each.value.timeouts, var.defaults.timeouts, {})
  cpu_core_count                       = try(each.value.cpu_core_count, var.defaults.cpu_core_count, null)
  cpu_threads_per_core                 = try(each.value.cpu_threads_per_core, var.defaults.cpu_threads_per_core, null)
  create_spot_instance                 = try(each.value.create_spot_instance, var.defaults.create_spot_instance, false)
  spot_price                           = try(each.value.spot_price, var.defaults.spot_price, null)
  spot_wait_for_fulfillment            = try(each.value.spot_wait_for_fulfillment, var.defaults.spot_wait_for_fulfillment, null)
  spot_type                            = try(each.value.spot_type, var.defaults.spot_type, null)
  spot_launch_group                    = try(each.value.spot_launch_group, var.defaults.spot_launch_group, null)
  spot_block_duration_minutes          = try(each.value.spot_block_duration_minutes, var.defaults.spot_block_duration_minutes, null)
  spot_instance_interruption_behavior  = try(each.value.spot_instance_interruption_behavior, var.defaults.spot_instance_interruption_behavior, null)
  spot_valid_until                     = try(each.value.spot_valid_until, var.defaults.spot_valid_until, null)
  spot_valid_from                      = try(each.value.spot_valid_from, var.defaults.spot_valid_from, null)
  disable_api_stop                     = try(each.value.disable_api_stop, var.defaults.disable_api_stop, null)
  putin_khuylo                         = try(each.value.putin_khuylo, var.defaults.putin_khuylo, true)
}