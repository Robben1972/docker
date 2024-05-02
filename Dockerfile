FROM python:3.11-slim-buster

WORKDIR /app

COPY . .

RUN pip install -r requirement.txt

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0:8000"]