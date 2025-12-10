from flask import Blueprint, request
from controllers.submission_controller import get_submissions_of_user_per_problem



submission_bp = Blueprint("submission_routes", __name__)


@submission_bp.get("/<int:user_id>/<int:problem_id>")
def route_get_submissions_of_user_per_problem(user_id, problem_id):
    return get_submissions_of_user_per_problem(user_id, problem_id)