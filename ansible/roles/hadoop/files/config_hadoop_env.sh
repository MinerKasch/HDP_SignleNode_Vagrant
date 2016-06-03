#!/bin/bash

ENV_FILES=(
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

sed -i "s@export JAVA_HOME=\${JAVA_HOME}@export JAVA_HOME=${JAVA_HOME}@g" /etc/hadoop/hadoop-env.sh