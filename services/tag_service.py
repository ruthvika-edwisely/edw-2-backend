from models.tag import Tag
from models.problem_tag import ProblemTag
from models.problem import Problem
from db import db


def fetch_all_tags():
    tags = Tag.query.all()
    return [
        {
            "id": t.id,
            "name": t.name,
            "category": t.category.value if t.category.value else "",
            "created_at": t.created_at

        } for t in tags
    ]



def fetch_tag_by_id(tag_id):
    tag = Tag.query.filter_by(id=tag_id).first()
    return {
            "id": tag.id,
            "name": tag.name,
            "category": tag.category.value if tag.category.value else None,
            "created_at": tag.created_at
        }


def fetch_problems_using_tag_id(tag_id):
    problem_tags = ProblemTag.query.filter_by(tag_id=tag_id).all()

    problems = []
    for pt in problem_tags:
        problem = Problem.query.filter_by(id=pt.problem_id).first()
        problems.append({
            "id": problem.id,
            "title": problem.title,
            "description": problem.description,
            "xp_reward": problem.xp_reward,
            "created_at": problem.created_at,
            "difficulty": problem.difficulty.value if problem.difficulty.value else None
        })
    
    return problems