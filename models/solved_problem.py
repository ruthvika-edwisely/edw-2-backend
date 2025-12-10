from db import db
from datetime import datetime



class SolvedProblem(db.Model):
    __tablename__ = "solved_problem"

    id = db.Column(db.Integer, primary_key=True)
    xp_earned = db.Column(db.Integer, default=0)
    tookAIHelp = db.Column(db.Boolean, default=False)
    solvedAt = db.Column(db.DateTime, default=datetime.utcnow)

    user_id = db.Column(db.Integer, db.ForeignKey("user.id"), nullable=False)
    user = db.relationship("User", back_populates="solved_problems")

    problem_id = db.Column(db.Integer, db.ForeignKey("problem.id"), nullable=False)
    problem = db.relationship("Problem", back_populates="solved_users")


    __table_args__ = (
        db.UniqueConstraint('problem_id', 'user_id', name='unique_problem_user'),
    )