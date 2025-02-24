module "network"{
    source = "../../terraform-modules/network"  
    project_id = local.project_config["project_id"]
    region = local.project_config["region"]
    vpc_name =  "idaratech-vpc"   
    gke_subnet_cidrs = local.network_config["gke_subnet_cidrs"]
    app_support_subnet_cidrs = local.network_config["app_support_subnet_cidrs"]

}