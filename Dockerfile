FROM python:3.11


ENV PYTHONUNBUFFERED = 1
ENV PYTHONDONTWRITEBYTECODE = 1

WORKDIR /pee

COPY Pipfile Pipfile.lock /pee/

RUN pip install pipenv && pipenv install --system

COPY . /pee/