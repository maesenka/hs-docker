# 8K pagesize is (minially?) required for Spatial Extender databases
db2 create database hibern8 pagesize 8 K

# not clear why this is necessary
db2 connect to hibern8

# Spatially enable hibern8 database
db2se enable_db hibern8

# Drop the definition if available for WGS84
db2se drop_srs hibern8 -srsName EPSG4326

## Overwrite for EPSG:4326 is no longer needed
# db2se create_srs hibern8     \
#  -srsName EPSG4326           \
#  -srsId   4326				 \
#  -coordsysName GCS_WGS_1984  \
#  -xOffset      -180          \
#  -xScale       1000000       \
#  -yOffset      -90           \
#  -zOffset     0              \
#  -zScale      1              \
#  -mOffset     0              \
#  -mScale      1				 


db2 -tvf /var/custom/ewkt.sql

