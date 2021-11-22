from flask import Flask

app = Flask(__name__)


# significa que ao acessar https://localhost/
# "https://:api.originsro.org/items/" 

@app.route("/items/")
def index():
    # recebi o body
    # pega body['item_id'] é 1
    # funcao pega menor preco do item_id 1
    # return esse valor que a gente pegou
    return "Hello World!"
    

# @app.route("/maps/")
# def index():
#     return "Hello Gabrielo!"


