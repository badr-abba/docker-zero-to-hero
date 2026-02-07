from flask import Flask
from redis import Redis

app = Flask(__name__)

# On se connecte au conteneur nommé "redis" (résolution DNS automatique)
redis = Redis(host='redis', port=6379)

@app.route('/')
def hello():
    # Incrémente un compteur dans Redis
    redis.incr('hits')
    count = redis.get('hits').decode('utf-8')
    return f"<h1>Compteur de visites</h1><p>Cette page a été vue <strong>{count}</strong> fois.</p>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
