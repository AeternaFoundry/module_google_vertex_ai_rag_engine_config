output "vertex_ai_rag_engine_configs_id" {
  description = "Map of id values across all vertex_ai_rag_engine_configs, keyed the same as var.vertex_ai_rag_engine_configs except keys with no id are omitted"
  value       = { for k, v in google_vertex_ai_rag_engine_config.vertex_ai_rag_engine_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vertex_ai_rag_engine_configs_deletion_policy" {
  description = "Map of deletion_policy values across all vertex_ai_rag_engine_configs, keyed the same as var.vertex_ai_rag_engine_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vertex_ai_rag_engine_config.vertex_ai_rag_engine_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vertex_ai_rag_engine_configs_name" {
  description = "Map of name values across all vertex_ai_rag_engine_configs, keyed the same as var.vertex_ai_rag_engine_configs except keys with no name are omitted"
  value       = { for k, v in google_vertex_ai_rag_engine_config.vertex_ai_rag_engine_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vertex_ai_rag_engine_configs_project" {
  description = "Map of project values across all vertex_ai_rag_engine_configs, keyed the same as var.vertex_ai_rag_engine_configs except keys with no project are omitted"
  value       = { for k, v in google_vertex_ai_rag_engine_config.vertex_ai_rag_engine_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vertex_ai_rag_engine_configs_rag_managed_db_config" {
  description = "Map of rag_managed_db_config values across all vertex_ai_rag_engine_configs, keyed the same as var.vertex_ai_rag_engine_configs except keys with no rag_managed_db_config are omitted"
  value       = { for k, v in google_vertex_ai_rag_engine_config.vertex_ai_rag_engine_configs : k => one(v.rag_managed_db_config) if v.rag_managed_db_config != null && length(v.rag_managed_db_config) > 0 }
}
output "vertex_ai_rag_engine_configs_region" {
  description = "Map of region values across all vertex_ai_rag_engine_configs, keyed the same as var.vertex_ai_rag_engine_configs except keys with no region are omitted"
  value       = { for k, v in google_vertex_ai_rag_engine_config.vertex_ai_rag_engine_configs : k => v.region if v.region != null && length(v.region) > 0 }
}

