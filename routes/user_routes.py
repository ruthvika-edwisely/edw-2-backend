from flask import Blueprint, request


user_bp = Blueprint("user_routes", __name__)


@user_bp.get("/")
def route_get_all_users():
    return 


@user_bp.get("/<int:user_id>")
def route_get_user(user_id):
    return 


@user_bp.post("/create")
def route_create_users():
    data = request.json
    return 



# update user


# delete user