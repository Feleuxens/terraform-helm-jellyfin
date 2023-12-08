resource "helm_release" "jellyfin" {
  name = "jellyfin"

  repository       = "https://helm.feleuxens.de"
  chart            = "jellyfin"
  version          = "0.1.0"
  create_namespace = true
  namespace        = "jellyfin"

  values = [
    templatefile("${path.module}/helm-values/jellyfin.yaml", {
      domain : var.domain,
      cpu_request : var.cpu_request,
      memory_request : var.memory_request,
      memory_limit : var.memory_limit
    })
  ]
}