from flask import Blueprint

language_bp = Blueprint("language_routes", __name__)

# ------------------ ROUTES ------------------

@language_bp.get("/")
def route_get_all_languages():
    return 

def route_get_language_by_name():
    return

# delete language

# update language