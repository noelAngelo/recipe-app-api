FROM python:3.7-alpine
MAINTAINER Noel Angelo Borneo

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
pip install -r /requirements.txt/

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
