FROM python:3.13

WORKDIR /web_app

RUN pip install fastapi uvicorn pydantic

COPY . .

EXPOSE 3000

CMD ["python", "main.py"]