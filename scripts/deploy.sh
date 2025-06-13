#!/bin/bash

CONTAINER_NAME="cotacoes-devops"
IMAGE_NAME="devops-cotacoes:1.0"

echo "🔄 Parando e removendo container antigo..."
docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

echo "🐳 Construindo nova imagem Docker..."
docker build -t $IMAGE_NAME .

echo "🚀 Subindo container $CONTAINER_NAME na porta 5000..."
docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME

echo "✅ Container em execução:"
docker ps | grep $CONTAINER_NAME
