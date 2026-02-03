from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    # On récupère une variable d'environnement (si elle existe)
    user = os.environ.get("USER_NAME", "Visiteur")
    return f"<h1>Bonjour {user} ! 🐳</h1><p>Cette application tourne dans un conteneur Docker.</p>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
