# 当レポジトリではチームの存在のみ管理し、
# 具体的なメンバーは別リポジトリ (GiganticMinecraft/teams) で管理することとする

# 可視性に関しては、 privacy = "closed" で外部からは見えないのでOK
#  > Visible teams can be viewed and @mentioned by every organization member.
#  (https://docs.github.com/en/organizations/organizing-members-into-teams/changing-team-visibility)

resource "github_team" "admin_team" {
  name        = "admin-team"
  description = "運営チーム"
  privacy     = "closed"
}

resource "github_team" "infra_collaborator" {
  name        = "infra-collaborator"
  description = "インフラ関連の外部コラボレーター"
  privacy     = "closed"
}

resource "github_team" "debug_admin_jmx" {
  name        = "debug-admin-jmx"
  description = "デバッグサーバーのJMXに接続できるTeam"
  privacy     = "closed"
}

resource "github_team" "onp_admin_grafana_team" {
  name        = "onp-admin-grafana"
  description = "オンプレミス環境のgrafanaに接続できるTeam"
  privacy     = "closed"
}

resource "github_team" "onp_admin_proxmox" {
  name        = "onp-admin-proxmox"
  description = "オンプレミス環境のproxmoxに接続できるTeam"
  privacy     = "closed"
}

resource "github_team" "onp_admin_raritan" {
  name        = "onp-admin-raritan"
  description = "オンプレミス環境のraritan(PDU)に接続できるTeam"
  privacy     = "closed"
}

resource "github_team" "onp_admin_minio" {
  name        = "onp-admin-minio"
  description = "オンプレミス環境のminioに接続できるTeam"
  privacy     = "closed"
}

resource "github_team" "prod_seichi_minecraft_readonly_services_access" {
  name        = "prod-seichi-minecraft-readonly-services-access"
  description = "本番環境の read-only なサービスにアクセスできる Team"
  privacy     = "closed"
}

resource "github_team" "onp_hubble_ui" {
  name        = "onp-hubble-ui"
  description = "Cilium Hubble UIに接続できるTeam"
  privacy     = "closed"
}

resource "github_team" "onp_phpmyadmin" {
  name        = "onp-phpmyadmin"
  description = "オンプレ環境のphpMyAdminに接続できるTeam"
  privacy     = "closed"
}

resource "github_team" "springer" {
  name        = "Springer"
  description = "整地鯖(春)のデベロッパー"
  privacy     = "closed"
}
