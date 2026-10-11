resource "google_vertex_ai_rag_engine_config" "vertex_ai_rag_engine_configs" {
  for_each = var.vertex_ai_rag_engine_configs

  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  region          = each.value.region

  rag_managed_db_config {
    dynamic "basic" {
      for_each = each.value.rag_managed_db_config.basic != null ? [each.value.rag_managed_db_config.basic] : []
      content {
      }
    }
    dynamic "scaled" {
      for_each = each.value.rag_managed_db_config.scaled != null ? [each.value.rag_managed_db_config.scaled] : []
      content {
      }
    }
    dynamic "unprovisioned" {
      for_each = each.value.rag_managed_db_config.unprovisioned != null ? [each.value.rag_managed_db_config.unprovisioned] : []
      content {
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

