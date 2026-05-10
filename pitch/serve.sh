#!/usr/bin/env bash
# Serve the Y-Cap pitch deck locally.
# Usage: ./serve.sh [port]    (default port: 8080)

set -euo pipefail
cd "$(dirname "$0")"

PORT="${1:-8080}"

echo ""
echo "  Y-Cap Pitch Deck"
echo "  ----------------"
echo "  Open: http://localhost:${PORT}"
echo "  Ctrl+C to stop"
echo ""

exec python3 -m http.server "${PORT}"
