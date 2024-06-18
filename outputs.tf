output "github_repositories_urls" {
  description = "a map with the html_url of each repository"
  value       = { for repo in github_repository.repository : repo.name => repo.html_url }
}
