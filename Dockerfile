FROM alpine

COPY . /web-app /web-app/

RUN apk add python3 py3-pip

RUN pip3 install Flask

RUN pip3 install gunicorn

RUN apk add --no-cache bash

WORKDIR /web-app

EXPOSE 5000

CMD [ "gunicorn", "app:flask_app()"]