FROM alpine:latest

RUN apk add tzdata curl iputils netcat-openbsd apk-cron nginx bind-tools supervisor

WORKDIR /srv

ADD https://raw.githubusercontent.com/bderenzo/tinystatus/master/tinystatus tinystatus.sh

COPY crontab.txt /crontab.txt
COPY supervisor.conf supervisor.conf
COPY generate_status.sh generate_status.sh
COPY nginx_default.conf /etc/nginx/conf.d/default.conf

VOLUME /config

RUN chmod +x generate_status.sh \
  && mkdir /web /run/nginx \
  && /usr/bin/crontab /crontab.txt

ENTRYPOINT ["supervisord","-c","/srv/supervisor.conf"]