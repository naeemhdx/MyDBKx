#authentication variable
# variable "DATABRICKS_HOST" {}
# variable "DATABRICKS_TOKEN" {}
#Basic Details
variable "cluster-name" {}
variable "spark-version" {
  type        = string
  default     = "10.4.x-scala2.12"
  description = "Runtime version of the cluster. Any supported databricks_spark_version id."
}

#ADLS SPN Access details
# variable "adls_name" {}
# variable "scope_name" {}
# variable "clientID_key" {}
# variable "secret_key" {}
#Metastore details
# variable "presto_ip" {}
# variable "presto_port" {}
#Node Type
variable "compute" {}

# variable "minworker" {}
# variable "maxworker" {}
