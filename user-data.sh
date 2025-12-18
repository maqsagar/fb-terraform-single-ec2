#!/bin/bash
apt update -y

# Install dependencies
apt install -y python3 python3-pip nodejs npm

# -----------------------
# Flask Backend
# -----------------------
mkdir -p /opt/flask
cat <<EOF > /opt/flask/app.py
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Flask backend running successfully"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
EOF

pip3 install flask
nohup python3 /opt/flask/app.py > /opt/flask/flask.log 2>&1 &

# -----------------------
# Express Frontend
# -----------------------
mkdir -p /opt/express
cd /opt/express
npm init -y
npm install express

cat <<EOF > app.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Express frontend running successfully');
});

app.listen(3000, '0.0.0.0', () => {
  console.log('Express running on port 3000');
});
EOF

nohup node /opt/express/app.js > /opt/express/express.log 2>&1 &
