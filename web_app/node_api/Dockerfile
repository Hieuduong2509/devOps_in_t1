FROM python:3.13

WORKDIR /web_app

RUN pip install fastapi uvicorn pydantic

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN opentelemetry-bootstrap -a install

COPY . .

EXPOSE 3000

CMD ["opentelemetry-instrument", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3000"]
