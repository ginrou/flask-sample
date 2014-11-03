#!/usr/bin/env python

from flask import Flask, render_template
app = Flask(__name__)

@app.route("/")
def index():
    items = ["foo", "bar", "ihr"]
    return render_template("index.html", items = items )

app.run()
