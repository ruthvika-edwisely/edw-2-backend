from flask import Blueprint

from controllers.tag_controller import (
    get_all_tags,  
    get_tag_by_id,
    get_problems_using_tag_id
)


tag_bp = Blueprint("tag_routes", __name__)

# ------------------ ROUTES ------------------

@tag_bp.get("/")
def route_get_all_tags():
    return get_all_tags()

# get individual tag
@tag_bp.get("/<int:tag_id>")
def route_get_tag_by_id(tag_id):
    return get_tag_by_id(tag_id)


@tag_bp.get("/<int:tag_id>/problems")
def route_get_problems_using_tag_id(tag_id):
    return get_problems_using_tag_id(tag_id)