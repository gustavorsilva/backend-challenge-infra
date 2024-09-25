resource "kubectl_manifest" "kibana_deployment" {
    yaml_body = file("${path.module}/manifest/06KibanaDeployment.yaml")
}

resource "kubectl_manifest" "Kibana_Service" {
    yaml_body = file("${path.module}/manifest/07_Kibana_Service.yaml")
}

resource "kubectl_manifest" "Fluend_DaemonSet" {
    yaml_body = file("${path.module}/manifest/05_Fluend_DaemonSet.yaml")
}

resource "kubectl_manifest" "Fluentd_ConfigMap" {
    yaml_body = file("${path.module}/manifest/04_Fluentd_ConfigMap.yaml")
}

resource "kubectl_manifest" "ElasticSearch_StatefulSet" {
    yaml_body = file("${path.module}/manifest/03_ElasticSearch_StatefulSet.yaml")
}

resource "kubectl_manifest" "ElasticSearch_Service" {
    yaml_body = file("${path.module}/manifest/02_ElasticSearch_Service.yaml")
}

resource "kubectl_manifest" "Namespace" {
    yaml_body = file("${path.module}/manifest/01_Namespace.yml")
}