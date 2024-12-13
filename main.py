from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles

app = FastAPI()


@app.get("/api/v1/hello")
def root():
    return {"message": "Hello World!", "num": "3"}


app.mount("/", StaticFiles(directory="ui/dist", html=True), name="ui")
