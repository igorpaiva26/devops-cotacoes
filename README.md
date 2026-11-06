# 💱 DevOps Cotações

Aplicação web desenvolvida em **Python (Flask)** para monitoramento e consulta de cotações de moedas em tempo real, empacotada com **Docker** e acompanhada de scripts em Shell para automação de testes e deploy.

---

## 🚀 Funcionalidades

- **Cotações em Tempo Real:** Consulta automatizada de moedas integrando a [AwesomeAPI](https://docs.awesomeapi.com.br/api-de-moedas):
  - Dólar Americano / Real Brasileiro (`USD-BRL`)
  - Euro / Real Brasileiro (`EUR-BRL`)
  - Bitcoin / Real Brasileiro (`BTC-BRL`)
- **Dashboard Web:** Interface limpa e intuitiva para visualização imediata dos valores atuais, máximos e mínimos.
- **Containerização:** Totalmente empacotado via Docker para execução isolada e portabilidade.
- **Automação DevOps:** Scripts shell para validação de endpoints, testes com formatação JSON e deploy automatizado do container.

---

## 🛠️ Tecnologias e Ferramentas

- **Backend:** Python 3.10+, Flask
- **Frontend:** HTML5, CSS3, Jinja2 Templates
- **Requisições HTTP:** Requests
- **Containerização:** Docker
- **Automação:** Shell Script (Bash / cURL / jq)
- **API de Dados:** AwesomeAPI

---

## 📂 Estrutura do Projeto

```text
devops-cotacoes/
├── app/
│   ├── __init__.py           # Inicialização e factory da aplicação Flask
│   ├── routes.py             # Rotas web e lógica de consumo da API externa
│   └── templates/
│       └── index.html        # Interface gráfica das cotações
├── scripts/
│   ├── deploy.sh             # Script de build da imagem e inicialização do container
│   ├── test-api.sh           # Teste de conectividade e consumo da API externa
│   └── test-api-formatado.sh # Teste de API com exibição formatada via jq
├── Dockerfile                # Configuração da imagem Docker multi-ambiente
├── requirements.txt          # Dependências do projeto Python
├── run.py                    # Ponto de entrada do servidor Flask
└── README.md                 # Documentação do projeto
```

---

## ⚙️ Como Executar

### Pré-requisitos
- [Python 3.10+](https://www.python.org/) instalado (para execução local)
- [Docker](https://www.docker.com/) instalado (para execução em container)
- [Git](https://git-scm.com/)

---

### Opção 1: Executando Localmente (Ambiente Virtual)

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/igorpaiva26/devops-cotacoes.git
   cd devops-cotacoes
   ```

2. **Crie e ative um ambiente virtual:**
   ```bash
   python -m venv venv
   # No Linux/macOS:
   source venv/bin/activate
   # No Windows (PowerShell):
   .\venv\Scripts\Activate.ps1
   ```

3. **Instale as dependências:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Inicie o servidor:**
   ```bash
   python run.py
   ```

5. Acesse no navegador: **[http://localhost:5000](http://localhost:5000)**

---

### Opção 2: Executando via Docker

#### Execução rápida com script de deploy (Linux / WSL / macOS):
```bash
chmod +x scripts/deploy.sh
./scripts/deploy.sh
```

#### Execução manual com Docker CLI:
```bash
# 1. Realizar o build da imagem
docker build -t devops-cotacoes:latest .

# 2. Executar o container na porta 5000
docker run -d -p 5000:5000 --name devops-cotacoes-app devops-cotacoes:latest
```

Acesse no navegador: **[http://localhost:5000](http://localhost:5000)**

---

## 🧪 Scripts de Teste e Validação

Dentro do diretório `scripts/` há ferramentas úteis para validar o consumo das APIs:

- **Teste direto:**
  ```bash
  chmod +x scripts/test-api.sh
  ./scripts/test-api.sh
  ```
- **Teste com JSON formatado (requer `jq`):**
  ```bash
  chmod +x scripts/test-api-formatado.sh
  ./scripts/test-api-formatado.sh
  ```

---

## 👤 Autor

Desenvolvido por **[Igor Paiva](https://github.com/igorpaiva26)**.
