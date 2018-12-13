docker run --hostname db2server --name db2 --detach --privileged=true -p 50000:50000 -p 55000:55000 -v `pwd`/../data/db2:/database geolatte/db2:11.1.4.4
