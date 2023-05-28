resource "databricks_cluster" "newcluster" {
  cluster_name            = var.cluster-name
  spark_version           = var.spark-version
  node_type_id            = var.compute
  autotermination_minutes = 30
  spark_conf              = local.spark_conf_de01
  #custom_tags             = local.tags
  is_pinned               = true
  autoscale {
    min_workers = 1
    max_workers = 2
  }
#   custom_tags = {
#     "ProjectNumber"         : var.ProjectNumber,
#     "ProjectName"           : var.ProjectName,
#     "BusinessContact"       : var.BusinessContact,
#     "OrgGrpCodeProjectCode" : var.OrgGrpCodeProjectCode,
#     "BillingInformation"    : var.BillingInformation,
#     "BusinessSector"        : var.BusinessSector,
#     "SupportContact"        : var.SupportContact
#   }
#   init_scripts {
#   dbfs {
#     destination = var.init_script_path
#   }
#   }
#   library {
#     jar = var.lib_jar_path
#     whl = var.lib_wheel_path
#   }
#   library {
#     pypi {
#       package = var.lib_pipy
#   }
#   }
#   library {
#     pypi {
#       package = var.lib_pipy1
#   }
#   }
#   library {
#     pypi {
#       package = var.lib_pipy2
#   }
#   }
#   library {
#     pypi {
#       package = var.lib_pipy3
#   }
#   }
#   library {
#     maven {
#       coordinates = var.lib_maven
#   }
#   }
}
