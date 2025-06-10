import os
from flask import Flask
import redis

app = Flask(__name__)

redis_host = os.environ["REDIS_HOST"]
redis_port = int(os.environ["REDIS_PORT"])
redis_password = os.environ.get("REDIS_PASSWORD")

r = redis.Redis(
    host=redis_host,
    port=redis_port,
    password=redis_password,
    decode_responses=True
)

@app.route('/')
def hello():
    count = r.incr('hits')
    return f'Hello! This page has been visited {count} times.'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
