#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    create database $GITEA_DATABASE;
    create user $GITEA_USER with encrypted password '$GITEA_PASSWORD';
    grant all privileges on database $GITEA_DATABASE to $GITEA_USER;

    create database $TEAMCITY_DATABASE;
    create user $TEAMCITY_USER with encrypted password '$TEAMCITY_PASSWORD';
    grant all privileges on database $TEAMCITY_DATABASE to $TEAMCITY_USER;
EOSQL