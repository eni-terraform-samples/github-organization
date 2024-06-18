locals {
  projects = {
    ovh-dns-zone : "sample Terraform project which manages an OVH DNS zone"
    aws-instances : "sample Terraform project which manages EC2 instances exposed by a load-balancer"
    scaleway-k8s-cluster : "sample Terraform project which creates a k8s cluster on Scaleway Cloud"
    gitlab-group : "sample Terraform project which creates a GitLab group and some projects"
    github-organization : "sample Terraform project which manages a GitHub organization"
    gcp-database : "sample Terraform project which manages a PostgreSQL database on GCP"
    mongodb-atlas-cluster : "sample Terraform project which manages a MongoDb Atlas Cluster"
  }
}

resource "github_repository" "repository" {
  for_each = local.projects

  name        = each.key
  description = each.value

  visibility = "public"
}
