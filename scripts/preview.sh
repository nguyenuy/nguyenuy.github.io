#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

preview_args=(--bind 0.0.0.0 --port 1313 --disableFastRender)

if [[ -n "${CODESPACE_NAME:-}" ]]; then
  preview_domain="${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN:-app.github.dev}"
  preview_args+=(
    --baseURL "https://${CODESPACE_NAME}-1313.${preview_domain}/"
    --appendPort=false
    --liveReloadPort 443
  )
else
  preview_args+=(--baseURL http://localhost:1313/)
fi

exec hugo server "${preview_args[@]}" "$@"
