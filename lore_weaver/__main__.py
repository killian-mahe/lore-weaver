from fastapi import FastAPI, Response

app = FastAPI(
    root_path="/api"
)


@app.get("/healthcheck")
def healthcheck():
    return Response(status_code=200)
