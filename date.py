from flask import Flask
from datetime import datetime

app = Flask(__name__)

@app.route("/")
def get_date():
    return f"Current date and time: {datetime.now()}"

if __name__ == "__main__":
    # Listen on all network interfaces and port 8080
    app.run(host="0.0.0.0", port=8080)
