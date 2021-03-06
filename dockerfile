FROM python:3.8.3-alpine3.12

LABEL MAINTAINER="ArthurSmoke <https://nas.xiaolong.fun>"

RUN apk update \
    && apk upgrade \
    && apk add --no-cache git \
    && pip3 install Django==2.1.5 django-tinymce4-lite==1.7.5 \
    && git clone https://github.com/ArthurSmoke/purple_mountain_docker.git \
    && cd purple_mountain_docker \
    && cd purple_mountain \
    && python3 manage.py runserver

EXPOSE 8000