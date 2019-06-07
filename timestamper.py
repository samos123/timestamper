import datetime

from flask import Flask


app = Flask(__name__)

@app.route("/")
def timestamper():
    x = datetime.datetime.now()
    print(x)
    return "%s" % (x)
