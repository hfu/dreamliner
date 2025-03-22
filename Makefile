SRC_URL = "https://download.geofabrik.de/asia/east-timor-latest.osm.pbf"

extract:
wget -O - "https://planet.openstreetmap.org/pbf/planet-latest.osm.pbf" | osmium tags-filter - n/railway=station,n/highway=bus_stop,n/railway=tram_stop,n/railway=subway -o public_transport_stops.osm.pbf
osmium export public_transport_stops.osm.pbf -f geojsonl -o public_transport_stops.geojsonl
