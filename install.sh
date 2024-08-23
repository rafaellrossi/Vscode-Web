#!/bin/bash

apt update && apt upgrade -y
apt install curl pwgen -y
curl -fsSL https://code-server.dev/install.sh | sh
export PASSWORD=$(pwgen 16 1)
code-server --port 10000 --host 0.0.0.0 --disable-telemetry > /dev/null 2>&1 &

echo ""
echo "Vscode-server configurado com sucesso."
echo "Acessar Vscode-server em http://<IP ou URL>:10000"
echo "Senha: $PASSWORD"
echo ""
