from flask import Blueprint


root_bp = Blueprint("root_routes", __name__)


@root_bp.get("/")
def route_home():
    print('hiiiiiiiiiiiiiiiiii')
    return {"message": "Flask backend is running"}