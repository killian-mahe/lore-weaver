FROM python:3.10 AS build

ENV POETRY_HOME=/opt/poetry
RUN python -m venv $POETRY_HOME
RUN $POETRY_HOME/bin/pip install poetry==1.7.1

WORKDIR /app

COPY . .

RUN $POETRY_HOME/bin/poetry install

ENTRYPOINT ["/opt/poetry/bin/poetry"]
CMD ["run", "uvicorn", "lore_weaver.__main__:app"]