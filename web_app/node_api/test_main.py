from fastapi.testclient import TestClient
from main import app

client = TestClient(app)
def test_get_jobs():
    expected_status = 200
    expected_response = {"success":True,"data":[{"id":1,"title":"DevOps Engineer","status":"Open"},{"id":2,"title":"Backend Developer","status":"Closed"}]}

    response = client.get("/api/jobs")
    assert response.status_code == expected_status
    assert response.json() == expected_response

def test_create_job():
    pass

def test_update_job():
    pass

def test_delete_job():
    pass