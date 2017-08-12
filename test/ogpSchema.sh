#!/bin/bash

# this script adds the OpenGeoPorta fields to a Solr core
# the core names can be passed as a command line argument
# before running the script you must create the core, perhaps with "bin/solr create -c geotest"

corename="gettingstarted"
if [ ! -z "$1" ]
  then
    corename=$1
fi

#curl http://localhost:8983/solr/$corename/update -H "Content-Type: text/xml" --data-binary '<delete><query>*:*</query></delete>'


echo "corename"
echo $corename

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"text",
      "type":"text_en",
      "stored":false,
      "indexed":true,
      "multiValued":true}
}' http://localhost:8983/solr/$corename/schema


curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"LayerId",
      "type":"string",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"ExternalLayerId",
      "type":"string",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"Name",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"CollectionId",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"Institution",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"InstitutionSort",
      "type":"text_en",
      "stored":false,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"Access",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"DataType",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"DataTypeSort",
      "type":"string",
      "stored":false,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"Availability",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"LayerDisplayName",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"LayerDisplayNameSort",
      "type":"string",
      "stored":false,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

#      "type":"text_en_synonymsStateLcsh",
curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"LayerDisplayNameSynonyms",
      "type":"text_en",
      "stored":false,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"Publisher",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"PublisherSort",
      "type":"string",
      "stored":false,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"Originator",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"OriginatorSort",
      "type":"string",
      "stored":false,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"Location",
      "type":"string",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"Abstract",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"ThemeKeywords",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"ThemeKeywordsExact",
      "type":"text_ws",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

#      "type":"text_en_synonymsLcsh",
curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"ThemeKeywordsSynonymsLsch",
      "type":"text_en",
      "stored":false,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

#      "type":"text_en_synonymsIso",
curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"ThemeKeywordsSynonymsIso",
      "type":"text_en",
      "stored":false,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"PlaceKeywords",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

#      "type":"text_en_synonymsState",
curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"PlaceKeywordsSynonyms",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"MinY",
      "type":"tdouble",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"MaxY",
      "type":"tdouble",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"Minx",
      "type":"tdouble",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"MaxX",
      "type":"tdouble",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"CenterX",
      "type":"tdouble",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"CenterY",
      "type":"tdouble",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"HalfWidth",
      "type":"tdouble",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"HalfHeight",
      "type":"tdouble",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"Area",
      "type":"tdouble",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"ContentDate",
      "type":"tdate",
      "stored":true,
      "indexed":true,
      "multiValued":false,
      "default": "0001-01-01T01:01:00Z"}

}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"SrsProjectionCode",
      "type":"text_en",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"WorkspaceName",
      "type":"text_en",
      "stored":true,
      "indexed":false,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"GeoReferenced",
      "type":"boolean",
      "stored":true,
      "indexed":false,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"FgdcText",
      "type":"string",
      "stored":true,
      "indexed":false,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"_version",
      "type":"long",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"timestamp",
      "type":"date",
      "stored":true,
      "indexed":true,
      "multiValued":false,
      "default":"NOW"}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
   "add-field" : {
      "name":"bbox_rpt",
      "type":"location_rpt",
      "stored":true,
      "indexed":true,
      "multiValued":false}
}' http://localhost:8983/solr/$corename/schema


curl -X POST -H 'Content-type:application/json' --data-binary '{
  "add-copy-field":{
     "source":"ThemeKeywords",
     "dest":[ "ThemeKeywordsExact", "ThemeKeywordsSynonymsLsch", "ThemeKeywordsSynonymsIso"]}
}' http://localhost:8983/solr/$corename/schema

curl -X POST -H 'Content-type:application/json' --data-binary '{
  "add-copy-field":{
     "source":"PlaceKeywords",
     "dest":"PlaceKeywordsSynonyms"}
}' http://localhost:8983/solr/$corename/schema

#curl -X POST -H 'Content-type:application/json' --data-binary '{
#  "add-copy-field":{
#     "source":"LayerDisplayName",
#     "dest":[ "LayerDisplayNameSynonyms", "LayerDisplayNameSort"]}
#}' http://localhost:8983/solr/$corename/schema

#curl -X POST -H 'Content-type:application/json' --data-binary '{
#  "add-copy-field":{
#     "source":"Institution",
#     "dest":"InstitutionSort"}
#}' http://localhost:8983/solr/$corename/schema

#curl -X POST -H 'Content-type:application/json' --data-binary '{
#  "add-copy-field":{
#     "source":"DataType",
#     "dest":"DataTypeSort"}
#}' http://localhost:8983/solr/$corename/schema

#curl -X POST -H 'Content-type:application/json' --data-binary '{
#  "add-copy-field":{
#     "source":"Publisher",
#     "dest":"PublisherSort"}
#}' http://localhost:8983/solr/$corename/schema

#curl -X POST -H 'Content-type:application/json' --data-binary '{
#  "add-copy-field":{
#     "source":"Originator",
#     "dest":"OriginatorSort"}
#}' http://localhost:8983/solr/$corename/schema
