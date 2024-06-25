FROM python:3.11

RUN mkdir app
WORKDIR /app

RUN pip install pipenv

COPY Pipfile .

RUN pipenv install

ENV TERM xterm

COPY . .

CMD /bin/bash -i -c "pipenv shell; python"
