#!/bin/bash

: ${DERBY_INSTALL:=/usr/local/derby}



echo -e "Initiating Hadoop"
echo -e "$JAVA_HOME"
echo -e "$DERBY_INSTALL"

su - hduser -c "$DERBY_INSTALL/bin/startNetworkServer"

if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi


