from flask import Blueprint

language_bp = Blueprint("language_routes", __name__)

# ------------------ ROUTES ------------------

@language_bp.get("/")
def route_get_all_languages():
    return 

def route_create_language():
    return

# delete language

# update language