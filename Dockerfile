FROM python:3.11-slim

WORKDIR /app

COPY /app/requ.txt .
RUN pip install --no-cache-dir -r requ.txt

COPY /app/main.py .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
