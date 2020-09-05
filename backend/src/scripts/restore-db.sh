set -e
# https://stackoverflow.com/questions/24718706/backup-restore-a-dockerized-postgresql-database
SERVER="my_database_server";
PW="mysecretpassword";
DB="my_database";
echo "Restoring docker postgres [$SERVER]..."

cat backup.sql | docker exec -i $SERVER psql -U postgres
