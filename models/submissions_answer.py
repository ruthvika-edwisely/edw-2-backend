from db import db
from datetime import datetime
import enum

class ModeEnum(enum.Enum):
    Run= "Run",
    Submit = "Submit"


class SubmissionAnswer(db.Model):
    __tablename__ = "submission_answer"

    id = db.Column(db.Integer, primary_key=True)
    code = db.Column(db.Text, nullable=True)
    totalExecTime = db.Column(db.Float, nullable=False)
    totalExecMemory = db.Column(db.Float, nullable=False)
    status = db.Column(db.String(255), nullable=False)
    mode = db.Column(db.Enum(ModeEnum), nullable=False, default=ModeEnum.Submit)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)


    submission_id = db.Column(db.Integer, db.ForeignKey("submission.id"), nullable=False)
    submission = db.relationship("Submission", back_populates="submission_answer")