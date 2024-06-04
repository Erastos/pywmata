FROM python:3.11

RUN mkdir app
WORKDIR /app

RUN pip install pipenv

COPY . .

RUN pipenv install

CMD /bin/bash
