--CAECAECAE
-- CAECAECAE create user rimfirededb superuser password 'docker_rimfirededb' ;
-- CAECAECAE create user rimfiredeuser password 'docker_rimfirededb';

-- CAECAECAE CREATE USER rimfirededbuser  PASSWORD 'docker_rimfirededbuser' VALID UNTIL 'infinity';

CREATE SCHEMA rimfirede;
CREATE SCHEMA rimfirede_metadata;

ALTER DATABASE rimfirededb SET search_path TO rimfirede, rimfirede_metadata, public;

GRANT ALL PRIVILEGES ON SCHEMA rimfirede TO rimfirededb;
GRANT ALL PRIVILEGES ON SCHEMA rimfirede_metadata TO rimfirededb;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA rimfirede TO rimfirededb;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA rimfirede_metadata TO rimfirededb;

GRANT SELECT ON ALL TABLES IN SCHEMA rimfirede TO rimfirededb;
GRANT SELECT ON ALL TABLES IN SCHEMA rimfirede_metadata TO rimfirededb;

GRANT USAGE ON SCHEMA rimfirede TO rimfirededb;
GRANT USAGE ON SCHEMA rimfirede_metadata TO rimfirededb;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";