# *Simple Project Setup*

## Database setup with Docker

- Add database dependency to pom.xml
```xml
<dependencies>
    <dependency>
        <groupId>org.postgresql</groupId>
        <artifactId>postgresql</artifactId>
        <version>42.7.3</version>
    </dependency>
</dependencies>
```
- Create a docker-compose file with database server 
```yaml
services:
  postgres:
    image: 'postgres:latest'
    environment:
      - 'POSTGRES_DB=todoapp'
      - 'POSTGRES_PASSWORD=password'
      - 'POSTGRES_USER=postgres'
    ports:
      - '5432:5432'
```
- Create a startup script that have the following commands
```shell
# Delete Existing Pod (and volumes)
docker compose down -v

# Restart The Pod (in detached mode)
docker compose up -d

# Execute the program
mvn compile
mvn exec:java -Dexec.mainClass=io.sriki.Main
```
- If required, change the permission of startup script file.

Testing git rebase
sample rebase
