FROM python:3
WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir --upgrade -r requirements.txt

CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "80"]
