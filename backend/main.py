from flask import Flask

app = Flask(__name__)


# significa que ao acessar https://localhost/
@app.route("/")
def index():
    return "Hello World!"