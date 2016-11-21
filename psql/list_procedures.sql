DROP FUNCTION IF EXISTS list_procs();

CREATE OR REPLACE FUNCTION list_procs()
RETURNS TABLE (
  name pg_catalog.pg_proc.proname%type
) AS $$
BEGIN
  RETURN QUERY

  SELECT  p.proname
  FROM    pg_catalog.pg_namespace n
  JOIN    pg_catalog.pg_proc p
  ON      p.pronamespace = n.oid
  WHERE   n.nspname = 'public';

  RETURN;
END; $$
LANGUAGE 'plpgsql';
