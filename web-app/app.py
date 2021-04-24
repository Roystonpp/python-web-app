from flask import Flask, url_for

def flask_app():
    app = Flask(__name__)

    @app.route('/')
    def index():
        return 'My Single Page Python Application'
    return app