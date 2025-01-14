from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api/message', methods=['GET'])
def get_message():
    return jsonify({"message": "Bonjour depuis l'API Flask !"})
