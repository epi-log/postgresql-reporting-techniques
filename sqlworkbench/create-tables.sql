ROLLBACK;

BEGIN;

CREATE TABLE ip_main
(
ip_addr INET
);

CREATE TABLE ip_banned
(
ip_addr INET
);

COMMIT;
