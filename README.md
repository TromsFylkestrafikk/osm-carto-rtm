## Installation

These instructions connects osm data to a postgres group, adding yourself to it.

```
$ export ACCESS_ACCOUNT=$(whoami)
$ sudo -u postgres -i --preserve-env=ACCESS_ACCOUNT
postgres~$ createuser $ACCESS_ACCOUNT
postgres~$ psql
postgres=# CREATE GROUP gis WITH LOGIN;
postgres=# GRANT gis TO <$ACCESS_ACCOUNT>;
postgres=# \q
postgres~$ createdb -E UTF8 -O gis osm_rtm
postgres~$ psql
postgres=# \c osm_rtm
postgres=# CREATE EXTENSION postgis;
postgres=# CREATE EXTENSION hstore;
postgres=# ALTER TABLE geometry_columns OWNER TO gis;
postgres=# ALTER TABLE spatial_ref_sys OWNER TO gis;
postgres=# \q
postgres~$ exit
$ osm2pgsql -d osm_rtm --create --slim  -G --hstore -C 2500 --number-processes 6 <MAPFILE>
$ sudo -u postgres psql
postgres=# alter table public.planet_osm_line owner to gis;
postgres=# alter table public.planet_osm_nodes owner to gis;
postgres=# alter table public.planet_osm_point owner to gis;
postgres=# alter table public.planet_osm_polygon owner to gis;
postgres=# alter table public.planet_osm_rels owner to gis;
postgres=# alter table public.planet_osm_roads owner to gis;
postgres=# alter table public.planet_osm_ways owner to gis;

```

