#!bin/bash

cqlsh -e "

CREATE KEYSPACE fresco_seg  WITH REPLICATION = { 'class' : 'SimpleStrategy','replication_factor' : 1 };

create table fresco_seg.customer_seg (party_id text, fresco13_mseg text,fresco13_seg text,fresco13_sseg text,match_flag list<text> ,PRIMARY KEY(party_id));

COPY fresco_seg.customer_seg (party_id,fresco13_mseg,fresco13_seg,fresco13_sseg,match_flag) FROM '/tmp/cass_DB/Cassandra_Fresco/data/DatasetGenerated.csv' WITH DELIMITER=',' AND HEADER = TRUE ;

"
