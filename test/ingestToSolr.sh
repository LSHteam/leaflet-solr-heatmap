#!/bin/bash

# use curl to send data test data to Solr
# core name can be passed as a command line argument
# before running this script you must add Solr fields via the script ogpSchema.sh

corename="gettingstarted"
if [ ! -z "$1" ]
  then
    corename=$1
fi

for f in data/smallDataSet/*;
do 
  echo "Procesing $f"
  curl http://localhost:8983/solr/$corename/update --data-binary @$f -H "Content-Type: text/xml"
done

curl http://localhost:8983/solr/$corename/update?commit=true
