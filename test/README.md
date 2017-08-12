
The contents of this directoy will help you config a localhost test
Solr that generates heatmaps.  It has been tested with Solr 6.6. 

* First, you may want to create a Solr core to hold the test data.  If
  you do not, the core named gettingstarted will be used.  To create a
  core use the solr command `bin/solr create -c geotest`.
* Second, the test data uses the OpenGeoPortal schema (google it for
  background).  To add these Solr fields run `ogpSchema.sh geotest`.
  It uses curl and the Solr Schema API to configure the Solr core.
* Third, the test data must be sent to your Solr.  Simply run
  `ingestToSolr.sh geotest` and 27 documents will be sent to Solr.

Now, you can run leaflet-solr-heatmap on localhost (perhaps with
grunt) and it will default to connect to this core.  Move the map and
the heatmap will update.  Click on the map and a popup will appear
with information on the nearby Solr documents.  