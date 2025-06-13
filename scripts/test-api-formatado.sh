#!/bin/bash

URL="http://localhost:5000"

echo "🌐 Testando a API em $URL com formatação bonita..."

curl -s $URL | jq .

