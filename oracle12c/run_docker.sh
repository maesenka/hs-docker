#! /bin/bash

docker run -d --name ora12 -p 1522:1521 \
  -v `pwd`/custom-setup:/opt/oracle/scripts/setup  \
  -v `pwd`/../data/ora12c:/opt/oracle/oradata \
  oracle/database:12.2.0.1-se2