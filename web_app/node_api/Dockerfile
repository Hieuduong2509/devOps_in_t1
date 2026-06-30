FROM python:3.10-slim

WORKDIR /web_app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt \
    && opentelemetry-bootstrap -a install

COPY . .

EXPOSE 3000

CMD ["opentelemetry-instrument", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3000"]
