CREATE USER admin;
GRANT ALL PRIVILEGES ON DATABASE youtube TO admin;
ALTER USER admin WITH SUPERUSER;
ALTER USER admin WITH PASSWORD 'admin';

\c youtube;

CREATE SCHEMA data;
CREATE SCHEMA timeseries;
SET TIME ZONE 'PST8PDT';