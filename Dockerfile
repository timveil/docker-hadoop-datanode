FROM timveil/docker-hadoop-core:2.8.x

LABEL maintainer="tjveil@gmail.com"

HEALTHCHECK CMD curl -f http://localhost:50075/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

# datanode ui
EXPOSE 50075

CMD ["/run.sh"]
