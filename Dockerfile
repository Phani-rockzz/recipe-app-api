# Dockerfile
#FROM python:3.7-alpine
FROM python:3.9.0b3-alpine3.12
MAINTAINER phanindra

ENV PYTHONUNBUFFERED 1
ENV LANG C.UTF-8

CMD mkdir /app
WORKDIR /app
COPY ./requirements.txt /requirements.txt
#RUN pip install -r /app/requirements.txt
COPY . app/
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]