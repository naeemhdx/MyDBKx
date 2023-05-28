locals {  
  spark_conf_de01 = {
    "spark.databricks.delta.preview.enabled" : true,
    "spark.databricks.repl.allowedLanguages" : "sql,python,r",
    "spark.databricks.cluster.prxofile" : "serverless",
#     "spark.sql.hive.metastore.jars" : "/dbfs/metastore_jars/hive-v3_1_2/*",
#     "spark.sql.hive.metastore.version" : "3.1.2",
#     "spark.hadoop.hive.metastore.uris" : "thrift://${var.presto_ip}:${var.presto_port}",
    "spark.databricks.delta.optimizeWrite.enabled": true,
    "spark.databricks.delta.autoCompact.enabled": true,
    "spark.cleaner.periodicGC.interval": "15",
#     "spark.hadoop.fs.azure.account.oauth.provider.type.${var.adls_name}.dfs.core.windows.net": "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider",
#     "spark.hadoop.fs.azure.account.auth.type.${var.adls_name}.dfs.core.windows.net": "OAuth",
#     "spark.hadoop.fs.azure.account.oauth2.client.id.${var.adls_name}.dfs.core.windows.net": "{{secrets/${var.scope_name}/${var.clientID_key}}}",
#     "spark.hadoop.fs.azure.account.oauth2.client.endpoint.${var.adls_name}.dfs.core.windows.net": https://login.microsoftonline.com/42cc3295-cd0e-449c-b98e-5ce5b560c1d3/oauth2/token,
#     "spark.hadoop.fs.azure.account.oauth2.client.secret.${var.adls_name}.dfs.core.windows.net": "{{secrets/${var.scope_name}/${var.secret_key}}}"
  }
  # tags = {
  #   "ProjectNumber"         : var.ProjectNumber,
  #   "ProjectName"           : var.ProjectName,
  #   "BusinessContact"       : var.BusinessContact,
  #   "OrgGrpCodeProjectCode" : var.OrgGrpCodeProjectCode,
  #   "BillingInformation"    : var.BillingInformation,
  #   "BusinessSector"        : var.BusinessSector,
  #   "SupportContact"        : var.SupportContact
  # }
}

