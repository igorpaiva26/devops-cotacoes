import requests
from flask import Blueprint, render_template

bp = Blueprint('routes', __name__)

@bp.route('/')
def home():
    moedas = ["USD-BRL", "EUR-BRL", "BTC-BRL"]
    resultado = {}

    for par in moedas:
        url = f"https://economia.awesomeapi.com.br/json/last/{par}"
        response = requests.get(url)
        dados = response.json()
        key = list(dados.keys())[0]
        resultado[key] = dados[key]

    return render_template('index.html', resultado=resultado)
