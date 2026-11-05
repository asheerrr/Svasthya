from fastapi import FastAPI
from backend.routers import auth, hospital

app = FastAPI(title="Svasthya API", version="1.0")

# Register routers
app.include_router(auth.router)
app.include_router(hospital.router)

@app.get("/")
def root():
    return {"message": "Svasthya Healthcare Backend is running successfully!"}
  
