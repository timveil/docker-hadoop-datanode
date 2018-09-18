FROM timveil/docker-hadoop-base:3.1.x

LABEL maintainer="tjveil@gmail.com"

HEALTHCHECK CMD curl -f http://localhost:9864/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

# datanode ui
EXPOSE 9864

CMD ["/run.sh"]
