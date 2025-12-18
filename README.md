Full-Stack Docker App (Express + Flask + MongoDB)

This project is a simple full-stack application demonstrating how to connect an Express frontend, a Flask backend, and MongoDB using Docker Compose.

🚀 Features

Node.js + Express Frontend
Displays a form and sends user input to the backend.

Flask Backend API
Receives data, processes it, and stores it in MongoDB.

MongoDB Database
Stores form submissions.

Dockerized Architecture

Separate containers for frontend, backend, and MongoDB

Shared internal Docker network

Easy one-command startup
 
Backend Run 
python3 -m venv venv
source venv/bin/activate
pip install flask
python3 app.py

pip3 install flask
pip3 install flask-cors
pip3 install pymongo

python3 app.py


for frontend

npm install express
node server.js
