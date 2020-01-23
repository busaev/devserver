create database ${GITEA_DATABASE};
create user ${GITEA_USER} with encrypted password '${GITEA_PASSWORD}';
grant all privileges on database ${GITEA_DATABASE} to ${GITEA_USER};

create database teamcity;
create user teamcity with encrypted password 'teamcity';
grant all privileges on database teamcity to teamcity;



