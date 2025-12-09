from flask import Blueprint

from .problem_routes import problem_bp
from .language_routes import language_bp
from .tag_routes import tag_bp
from .root_routes import root_bp


def register_routes(app):
    app.register_blueprint(root_bp)
    app.register_blueprint(problem_bp, url_prefix="/api/v1/problems")
    app.register_blueprint(language_bp, url_prefix="/api/v1/languages")
    app.register_blueprint(tag_bp, url_prefix="/api/v1/tags")

