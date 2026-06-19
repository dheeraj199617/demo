from fastapi import FastAPI


app = FastAPI()

#endpoint
@app.get("/")
def read_root():
    return {"message": "ok",
            'status'  :"healthy"}
