# Use uma imagem oficial Python como base
FROM python:3.10-slim

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos necessários para o container
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expõe a porta 5000 da aplicação Flask
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "run.py"]
