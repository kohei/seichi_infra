resource "cloudflare_access_application" "test_nginx_application" {
  zone_id                   = local.cloudflare_zone_id
  name                      = "Test nginx application"
  domain                    = "nginx-test.${local.root_domain}"
  type                      = "self_hosted"
  session_duration          = "1h"
}

resource "cloudflare_access_policy" "test_nginx_application" {
  application_id = cloudflare_access_application.test_nginx_application.id
  zone_id        = local.cloudflare_zone_id
  name           = "Require to be in a GitHub team to access"
  precedence     = "1"
  decision       = "allow"

  include {
    github {
      name = local.github_org_name
      teams = [github_team.nginx_test_connection_team.slug]
      identity_provider_id = cloudflare_access_identity_provider.github_oauth.id
    }
  }
}
