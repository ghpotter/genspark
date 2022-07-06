import redis
from flask import Flask
from datetime import datetime

app = Flask(__name__)
cache = redis.Redis(host='redis', port=6379)

@app.route('/')
def hello():
    now = datetime.now()
    current_time = now.strftime("%H:%M:%S")
    print("Current Time =", current_time)
    return 'Hello World! It is now {}\n'.format(current_time)

