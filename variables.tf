variable "vertex_ai_rag_engine_configs" {
  description = <<EOT
Map of vertex_ai_rag_engine_configs, attributes below
Required:
    - rag_managed_db_config (block):
        - basic (optional, block):
        - scaled (optional, block):
        - unprovisioned (optional, block):
Optional:
    - deletion_policy
    - project
    - region
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deletion_policy = optional(string)
    project         = optional(string)
    region          = optional(string)
    rag_managed_db_config = object({
      basic = optional(object({
      }))
      scaled = optional(object({
      }))
      unprovisioned = optional(object({
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

