
# DELETE EXISTING POD (and volumes)
docker compose down -v

# RESTART THE POD (in detached mode)
docker compose up -d

# Execute the program
mvn compile
mvn exec:java -Dexec.mainClass=io.sriki.Main