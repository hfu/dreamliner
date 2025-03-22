SOURCE_URL = https://download.geofabrik.de/asia/thailand-latest.osm.pbf
SOURCE_PATH = source.pbf
FILTER = "nwa/railway=station,nwa/highway=bus_stop,nwa/railway=tram_stop,nwa/railway=subway"
EXTRACTED_PATH = extracted.pbf
TIPPECANOE_OPTIONS = -f -l trans --base-zoom=8
TARGET_PATH = target.pmtiles

all: $(TARGET_PATH)

$(SOURCE_PATH):
	curl -o $(SOURCE_PATH) $(SOURCE_URL)

$(EXTRACTED_PATH): $(SOURCE_PATH)
	osmium tags-filter -o $(EXTRACTED_PATH) $(SOURCE_PATH) $(FILTER)

$(TARGET_PATH): $(EXTRACTED_PATH)
	osmium export -f geojsonseq $(EXTRACTED_PATH) | \
	tippecanoe $(TIPPECANOE_OPTIONS) -o $(TARGET_PATH)

clean:
	rm -f $(SOURCE_PATH) $(EXTRACTED_PATH) $(TARGET_PATH)
