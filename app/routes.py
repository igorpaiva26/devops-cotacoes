from flask import Blueprint, jsonify
import requests

main = Blueprint('main', __name__)

@main.route('/')
def home():
    return jsonify({"mensagem": "API de Cotações Rodando com Flask!"})

@main.route('/cotacao/<moeda>')
def cotacao(moeda):
    try:
        url = f"https://economia.awesomeapi.com.br/json/last/{moeda}-BRL"
        resposta = requests.get(url)
        dados = resposta.json()
        return jsonify(dados)
    except Exception as e:
        return jsonify({"erro": str(e)})
