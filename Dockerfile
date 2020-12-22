FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8
LABEL maintainer="Kehao Chen <kehao.chen@happyhacking.ninja>"

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

COPY ./app /app/app