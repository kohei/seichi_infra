#!/bin/bash
set -e

# region configure next reboot

timedatectl set-timezone Asia/Tokyo
echo 'reboot' | at 4:00

# endregion

# region start services

env_files=(
  "/root/seichi_open_servers_configs/.keycloak.env"
  "/root/seichi_open_servers_configs/.postgres.env"
)

for env_file in "${env_files[@]}"; do
  if [ ! -f "$env_file" ]; then
    echo "ERROR: expected an env file at"
    echo "  $env_file"
    echo "Exiting the script..."
    exit 1
  fi
done

docker compose \
  -e KEYCLOAK_ENV_FILE_PATH=/root/seichi_open_servers_configs/.keycloak.env
  -e POSTGRES_ENV_FILE_PATH=/root/seichi_open_servers_configs/.postgres.env
  -f /root/seichi_open_servers/seichi-authenticator/docker-compose.yml \
  up

# endregion
