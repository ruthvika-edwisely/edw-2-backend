from models.submission import Submission
from models.submissions_answer import SubmissionAnswer
from models.language import Language



def fetch_submissions_of_user_for_problem(user_id: int, problem_id: int):
    submissions = Submission.query.filter_by(user_id=user_id, problem_id=problem_id)
    
    submissions_data = []
    submission_answers = []

    for sub in submissions:

        submissions_data.append({
            "id": sub.id,
            "user_id": sub.user_id,
            "problem_id": sub.problem_id,
            "status": sub.status,
            "created_at": sub.created_at,
        })

        sub_ans = SubmissionAnswer.query.filter_by(submission_id=sub.id)
        submission_answers.append({
            "id": sub_ans.id,
            "submission_id": sub_ans.submission_id,
            "code": sub_ans.code,
            "language_id": sub_ans.language_id,
            "language_name": Language.query.get(language_id=sub_ans.language_id),
            "totalExecTime": sub_ans.totalExecTime,
            "totalExecMemory": sub_ans.totalExecMemory,
            "status": sub_ans.status,
            "mode": sub_ans.mode,
            "created_at": sub_ans.created_at
        })
    

    return {
        "submissions": submissions_data,
        "submission_answers": submission_answers
    }


def fetch_submissions_of_user(user_id: int):
    submissions = Submission.query.filter_by(user_id=user_id)
    submissions_data = []
    for sub in submissions:
        submissions_data.append({
            "id": sub.id,
            "user_id": sub.user_id,
            "problem_id": sub.problem_id,
            "status": sub.status,
            "created_at": sub.created_at,
        })
    
    return submissions_data





############################################################
def create_new_submission(data):
    
    source_code = data.get('source_code')
    language_id = Language.query.filter_by(name=data.get('language_name')).compiler_language_id
    inputs = data.get('inputs')
    expected_outputs = data.get('expected_outputs')
    problem_id = data.get('problem_id')
    
    user_id = ""

    submissions = []
    for i in range(len(inputs)):
        submissions.append({
            "source_code": source_code,
            "language_id": language_id,
            "stdin": inputs[i],
            "expected_output": expected_outputs[i]
        })
    
    # ikkada judge0 ki pampistav - dani response testcase result and submission answer lo store cheskuntav

