ROLLBACK;

BEGIN;

WBimport
-file='ip_addresses.csv'
-type=text
-table=ip_main
-schema=public
-extension=csv
-mode=insert
-truncateTable=true
-batchsize=500

WBimport
-file='banned_ip_addresses.csv'
-type=text
-table=ip_banned
-schema=public
-extension=csv
-mode=insert
-truncateTable=true
-batchsize=500

COMMIT;
