set -e
# https://stackoverflow.com/questions/24718706/backup-restore-a-dockerized-postgresql-database

SERVER="my_database_server";
PW="UNCCISTHEBESTSCHOOLEVER";
DB="my_database";
echo "Backing up docker postgres [$SERVER]..."
docker exec -t $SERVER pg_dumpall -c -U postgres > backup.sql
