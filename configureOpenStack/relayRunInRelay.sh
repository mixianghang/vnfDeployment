#!/bin/bash
if [ $# -lt 3 ];then
    echo "Usage script, startId, endId"
    exit 1
fi
scriptToRun=$1
startId=$2
endId=$3
currId=$startId
currDir=$(pwd)
while [ $currId -le $endId ];do
    currNode="compute$currId"
    echo "curr node is $currNode"
    $currDir/$scriptToRun $currNode
    ((currId++))
done
