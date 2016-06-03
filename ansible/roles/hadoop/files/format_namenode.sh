#!/bin/bash

ENV_FILES=(
        '/etc/profile.d/hadoop_home.sh'
        '/etc/profile.d/java_home.sh'
);

for PROFILE in ${ENV_FILES[*]}; do
        if [ -f ${PROFILE} ] ; then
                source ${PROFILE}
        else
                echo "ERROR: ${PROFILE} not found"
                exit 1
        fi
done

RES=$(${HADOOP_HOME}/bin/hdfs namenode -format <<< $1) 
echo ${RES}
exit 0
