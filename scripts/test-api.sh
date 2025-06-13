#!/bin/bash

URL="http://localhost:5000"

echo "🌐 Testando a API em $URL..."
RESPONSE=$(curl -s -w "\n\n🔁 Código de status HTTP: %{http_code}\n" $URL)

echo -e "📦 Resposta recebida:"
echo "$RESPONSE"
