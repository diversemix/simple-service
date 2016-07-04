#!/usr/bin/python
from flask import Flask
app = Flask(__name__)

import os
import names


@app.route("/")
def hello():
    return names.get_full_name()

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5555)
