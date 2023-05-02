

output "ip_publico_vm" {
    description = "Output referente ao nome da VPC utilizada"
    value = module.gcp_vm.ip_publico_out
}

output "vm_name_out" {
    description = "Output referente ao nome da VM"
    value = module.gcp_vm.vm_name_out
}