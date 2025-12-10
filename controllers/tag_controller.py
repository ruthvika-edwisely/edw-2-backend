from services.tag_service import (
    fetch_all_tags,
    fetch_tag_by_id,
    fetch_problems_using_tag_id
)


from utils.response import success, error


def get_all_tags():
    try:
        tags = fetch_all_tags()
        return success(data=tags)
    
    except Exception as e:
        return error(str(e))
    


def get_tag_by_id(tag_id: int):
    try:
        tag = fetch_tag_by_id(tag_id)
        return success(data=tag)
    
    except Exception as e:
        return error(str(e))
    

def get_problems_using_tag_id(tag_id: int):
    try:
        problems = fetch_problems_using_tag_id(tag_id)
        return success(data=problems)
    
    except Exception as e:
        return error(str(e))


