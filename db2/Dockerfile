FROM store/ibmcorp/db2_developer_c:11.1.4.4-x86_64

ENV LICENSE=accept \
	DB2INSTANCE=db2inst1 \
	DB2INST1_PASSWORD=password \
	DBNAME=testdb \
	BLU=false \
	ENABLE_ORACLE_COMPATIBILITY=false \
	UPDATEAVAIL=NO \
	TO_CREATE_SAMPLEDB=false \
	REPODB=false \
	IS_OSXFS=false \
	PERSISTENT_HOME=false \
	HADR_ENABLED=false \
	ETCD_ENDPOINT= \
	ETCD_USERNAME= \
	ETCD_PASSWORD= 

RUN mkdir /var/custom
COPY ["custom", "/var/custom"]
RUN chmod -R a+x /var/custom/*