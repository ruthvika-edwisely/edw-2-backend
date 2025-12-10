from utils.response import success, error

def get_submissions_of_user_per_problem(user_id: int, problem_id: int):
    try: 
        submissions = fetch_submissions_of_user_per_problem(user_id, problem_id)
        return success(data=submissions)
    
    except Exception as e:
        return error(str(e))