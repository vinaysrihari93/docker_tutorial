from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Hello from Docker!</h1><p>This is running inside a container.</p>"

@app.route("/health")
def health():
    return {"status": "healthy"}, 200

if __name__ == "__main__":
    # Use debug only in development
    app.run(host="0.0.0.0", port=5000, debug=False)