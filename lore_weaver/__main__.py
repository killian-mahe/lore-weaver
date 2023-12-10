from fastapi import FastAPI, Response

app = FastAPI()


@app.get("/healthcheck")
def healthcheck():
    return Response(status_code=200)
