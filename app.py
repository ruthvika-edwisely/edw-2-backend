from dotenv import load_dotenv
load_dotenv()



from flask import Flask
from flask_cors import CORS
from config import Config
from db import db
from routes import register_routes



def create_app():
    app = Flask(__name__)

    app.config.from_object(Config)

    CORS(app, resources={r"/api/*": {"origins": "*"}})



    # This must be called before accessing the database engine or session with the app.
    db.init_app(app)

    register_routes(app)

    with app.app_context():
        # Create tables that do not exist in the database
        db.create_all()
    

    return app


if __name__ == "__main__":
    app = create_app()
    app.run(host="0.0.0.0", port=5000)