module "mkrg" {
  source = "C:/DevOps_Insider/Batch16/Terraform_module_code/Basecode_module/resource_group"
  # msrg   = var.mrg
  # Use the correct variable name expected by the module, for example:
  # name = var.mrg_name
}

module "mkrg1" {
  source = "C:/DevOps_Insider/Batch16/Terraform_module_code/Basecode_module/resource_group"
  # msrg   = var.mrg
  # Use the correct variable name expected by the module, for example:
  # name = var.mrg_name
}

module "mkrg2" {
  source = "C:/DevOps_Insider/Batch16/Terraform_module_code/Basecode_module/resource_group"
  # msrg   = var.mrg
  # Use the correct variable name expected by the module, for example:
  # name = var.mrg_name
}

module "mkvnet" {
  source     = "C:/DevOps_Insider/Batch16/Terraform_module_code/Basecode_module/vnet"
  # Replace 'vnet_name' with the actual variable name expected by the vnet module
  # For example, if the module expects 'vnet_name', use:
  # vnet_name = var.mvnet
  depends_on = [module.mkrg]
}

module "mkip" {
  source     = "C:/DevOps_Insider/Batch16/Terraform_module_code/Basecode_module/public_ip"
  # mspip      = var.mpip
  depends_on = [module.mkvnet]
}

module "mksub" {
  source     = "C:/DevOps_Insider/Batch16/Terraform_module_code/Basecode_module/subnet"
  # mssub      = var.msub
  depends_on = [module.mkvnet]
}

module "mknic" {
  source     = "C:/DevOps_Insider/Batch16/Terraform_module_code/Basecode_module/nic"
  # msnic      = var.mnic
  # datas      = var.msub
  # dpip       = var.mpip
  depends_on = [module.mksub, module.mkip]
}

module "mkvm" {
  source     = "C:/DevOps_Insider/Batch16/Terraform_module_code/Basecode_module/vm"
  # msvm       = var.mvm
  # dnic       = var.mnic
  depends_on = [module.mknic]
}
