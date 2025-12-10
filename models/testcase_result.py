from db import db
from datetime import datetime


class TestcaseResult(db.Model):
    __tablename__ = "testcase_result" 

    id = db.Column(db.Integer, primary_key=True)
    status = db.Column(db.String(255), nullable=False)
    execTime = db.Column(db.Float, nullable=False)
    execMemory = db.Column(db.Float, nullable=False)
    expected_output = db.Column(db.Text, nullable=False)
    error_message = db.Column(db.Text, default="")
    created_at = db.Column(db.DateTime, default=datetime.utcnow)


    problem_id = db.Column(db.Integer, db.ForeignKey("problem.id"), nullable=False)
    problem = db.relationship("Problem", back_populates="testcase_results")

    submission_id = db.Column(db.Integer, db.ForeignKey("submission.id"), nullable=False)
    submission = db.relationship("Submission", back_populates="testcase_results")

    testcase_id = db.Column(db.Integer, db.ForeignKey("testcase.id"), nullable=False)
    testcase = db.relationship("Testcase", back_populates="testcase_results")


    def __repr__(self):
        return f"<TestcaseResult problem={self.id} problem={self.problem_id} submission={self.submission_id} testcase={self.testcase_id}>"