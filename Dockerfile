FROM python:3.11

WORKDIR /app

COPY ./app /app

RUN pip install fastapi uvicorn

EXPOSE 8001

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001", "--reload"]
