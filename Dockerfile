FROM python:3.8

COPY . /web-app /web-app/

RUN pip3 install Flask

RUN apk add --no-cache bash

WORKDIR /web-app

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run"]