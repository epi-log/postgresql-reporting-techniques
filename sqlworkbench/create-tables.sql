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

CREATE MATERIALIZED VIEW public.mv_ip_addr AS
SELECT DISTINCT ON (m.ip_addr) m.ip_addr AS "ip_addr",
b.ip_addr AS "banned_ip",
COALESCE(m.ip_addr = b.ip_addr, FALSE) AS "banned"
FROM ip_main m
LEFT JOIN ip_banned b on m.ip_addr = b.ip_addr
ORDER BY m.ip_addr;

COMMIT;
