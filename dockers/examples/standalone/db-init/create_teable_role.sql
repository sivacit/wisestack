-- SQL script to create the "teable" role and any other required configuration
DO
$$
BEGIN
   -- Create "teable" role if it does not exist
   IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'teable') THEN
      CREATE ROLE teable WITH LOGIN PASSWORD 'teable';
      -- Optionally, grant privileges to this role
      ALTER ROLE teable CREATEDB;
   END IF;
END
$$;
