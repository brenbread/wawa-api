from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "Wawa"}

@app.get("/wawa")
def get_wawa():
    return {
        "name": "konkon",
        "type": "wawa"
    }