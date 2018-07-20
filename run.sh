#!/bin/bash

datadir=`echo $HDFS_CONF_dfs_datanode_data_dir | perl -pe 's#file://##'`
if [ ! -d $datadir ]; then
  echo "Datanode data directory not found: $datadir"
  exit 2
fi

# todo: why is this needed
ulimit -c unlimited

$HADOOP_PREFIX/bin/hdfs --config $HADOOP_CONF_DIR datanode

# todo: why is this needed
cat /hs_err*
