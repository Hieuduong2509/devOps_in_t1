from fastapi import FastAPI, Request, HTTPException
from fastapi.responses import JSONResponse
from pydantic import BaseModel
from typing import Optional
from datetime import datetime, timezone
import uvicorn

app = FastAPI()

jobs = [
    {"id": 1, "title": "DevOps Engineer", "status": "Open"},
    {"id": 2, "title": "Backend Developer", "status": "Closed"}
]

class JobUpdate(BaseModel):
    title: Optional[str] = None
    status: Optional[str] = None

class JobCreate(BaseModel):
    title: str = 'Untitled Job'
    status: str = 'Open'


@app.middleware("http")
async def log_requests(request: Request, call_next):
    now = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
    print(f"[INFO] {request.method} request tới {request.url.path} lúc {now}")
    
    response = await call_next(request)
    return response

@app.get("/api/jobs")
def get_jobs():
    return {"success": True, "data": jobs}


@app.post("/api/jobs", status_code=201)
def create_job(job: JobCreate):
    new_id = jobs[-1]["id"] + 1 if jobs else 1
    new_job = {
        "id": new_id,
        "title": job.title,
        "status": job.status
    }
    
    jobs.append(new_job)
    print(f"[SUCCESS] Đã tạo công việc mới: {new_job['title']}")
    return {"success": True, "data": new_job}


@app.put("/api/jobs/{job_id}")
def update_job(job_id: int, job_update: JobUpdate):
    for i, j in enumerate(jobs):
        if j["id"] == job_id:
            update_data = job_update.model_dump(exclude_unset=True)
            jobs[i].update(update_data)
            
            print(f"[SUCCESS] Đã cập nhật công việc ID: {job_id}")
            return {"success": True, "data": jobs[i]}

    print(f"[ERROR] Lỗi cập nhật: Không tìm thấy ID {job_id}")
    return JSONResponse(status_code=404, content={"success": False, "message": "Not found"})



@app.delete("/api/jobs/{job_id}")
def delete_job(job_id: int):
    global jobs
    initial_length = len(jobs)
    jobs = [j for j in jobs if j["id"] != job_id]

    if len(jobs) == initial_length:
        print(f"[ERROR] Lỗi xóa: Không tìm thấy ID {job_id}")
        return JSONResponse(status_code=404, content={"success": False, "message": "Not found"})

    print(f"[SUCCESS] Đã xóa công việc ID: {job_id}")
    return {"success": True, "message": "Deleted successfully"}


if __name__ == "__main__":
    print("[SYSTEM] Python FastAPI (CRUD) đang chạy tại port 3000")
    uvicorn.run("main:app", host="0.0.0.0", port=3000, reload=False)

