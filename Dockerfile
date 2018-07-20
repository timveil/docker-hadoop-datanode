FROM timveil/docker-hadoop-base

LABEL maintainer="tjveil@gmail.com"

HEALTHCHECK CMD curl -f http://localhost:50075/ || exit 1

#todo can this ENV and volume definition be moved to compose?
ENV HDFS_CONF_dfs_datanode_data_dir=file:///hadoop/dfs/data
RUN mkdir -p /hadoop/dfs/data
VOLUME /hadoop/dfs/data

ADD run.sh /run.sh
RUN chmod a+x /run.sh

# datanode ui
EXPOSE 50075

CMD ["/run.sh"]
