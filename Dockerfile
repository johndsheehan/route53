FROM ubuntu:latest

RUN apt-get update  \
&&  apt-get install  -y  cron  curl  dnsutils  python3-pip  \
&&  rm -rf /var/lib/apt/lists/*  \
&&  python3 -m pip install awscli  \
&&  mkdir /root/.aws

COPY crontab  /etc/crontab
COPY route53  /route53

CMD ["cron", "-f"]
