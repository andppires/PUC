from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Olá, está preparado? Tudo está mudando 1!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)