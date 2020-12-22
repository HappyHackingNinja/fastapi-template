from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


class Message(BaseModel):
    message: str


@app.get("/")
async def root():
    return {"message": "FastAPI Template"}


@app.post("/echo")
async def echo(msg: Message):
    return msg
