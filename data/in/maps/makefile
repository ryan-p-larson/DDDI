ic-map.json: ic-buildings-geo.json ic-waterareas-geo.json ic-roads-geo.json
	rm iowa*.*
	topojson \
			-o ic-map.json \
			-- \
			roads=ic-roads-geo.json \
			buildings=ic-buildings-geo.json \
			water=ic-waterareas-geo.json

ic-buildings-geo.json: iowa-city_iowa_osm_buildings.shp
	ogr2ogr \
			-f GeoJSON \
			ic-buildings-geo.json \
			iowa-city_iowa_osm_buildings.shp

ic-waterareas-geo.json: iowa-city_iowa_osm_waterareas.shp
	ogr2ogr \
			-f GeoJSON \
			ic-waterareas-geo.json \
			iowa-city_iowa_osm_waterareas.shp

ic-roads-geo.json: iowa-city_iowa_osm_roads.shp
	ogr2ogr \
			-f GeoJSON \
			ic-roads-geo.json \
			iowa-city_iowa_osm_roads.shp

ic-roads-geo.json: iowa-city_iowa_osm_roads.shp
	ogr2ogr \
			-f GeoJSON \
			ic-roads-geo.json \
			iowa-city_iowa_osm_roads.shp

iowa-city_iowa_osm_roads.shp iowa-city_iowa_osm_waterareas.shp iowa-city_iowa_osm_buildings.shp: iowa-city-maps.zip
	unzip iowa-city-maps.zip
	rm iowa-city-maps.zip
	touch iowa-city_iowa_osm_roads.shp iowa-city_iowa_osm_waterareas.shp iowa-city_iowa_osm_buildings.shp

iowa-city-maps.zip:
	curl -o iowa-city-maps.zip 'https://s3.amazonaws.com/metro-extracts.mapzen.com/iowa-city_iowa.imposm-shapefiles.zip'
	touch iowa-city-maps.zip