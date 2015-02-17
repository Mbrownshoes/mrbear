
# use this to convert UTM to lat long
# ogr2ogr -s_srs "+proj=utm +zone=10 +datum=NAD83" -t_srs "epsg:4326" -f GeoJSON -lco GEOMETRY=AS_XY  subunits.json G008.vrt 

G008.json: build/subunits.json
	node_modules/.bin/topojson \
	-o $@ \
	-p Bears_ID,loc_date,full_date \
	-- $<