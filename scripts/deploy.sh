#!/bin/bash

# Garante que o diretório raiz do projeto seja acessado corretamente
PROJECT_ROOT="$(dirname "$(readlink -f "$0")")/.."
cd "$PROJECT_ROOT" || { echo "❌ Erro ao acessar raiz do projeto"; exit 1; }

echo "🔄 Parando e removendo container antigo..."
docker stop cotacoes-devops 2>/dev/null || true
docker rm cotacoes-devops 2>/dev/null || true

echo "🐳 Construindo nova imagem Docker..."
docker build -t devops-cotacoes:1.0 .

echo "🚀 Subindo container cotacoes-devops na porta 5000..."
docker run -d -p 5000:5000 --name cotacoes-devops devops-cotacoes:1.0

echo "✅ Container em execução:"
docker ps | grep cotacoes-devops

echo "🌐 Testando a API em http://localhost:5000 com formatação bonita..."
curl -s http://localhost:5000 | head -n 20
