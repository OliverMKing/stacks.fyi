set -e

SERVER="my_database_server";
PW="mysecretpassword";
DB="my_database";
echo "Backing up docker postgres [$SERVER]..."
docker exec -t $SERVER pg_dumpall -c -U postgres > backup.sql
