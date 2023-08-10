VAULT_ADDR="10.2.0.2:8200"
VAULT_TOKEN="hvs.AuQpEy6jMjQ9DIAXOF7UUT9x"

POSTGRES_USERNAME=$(vault read -field=test-key secret/application)
POSTGRES_PASSWORD=$(vault read -field=password secret/path/to/postgres)

# Set environment variables for Spring Boot
export SPRING_DATASOURCE_URL=jdbc:postgresql://your-postgres-host:5432/your-db
export SPRING_DATASOURCE_USERNAME=$POSTGRES_USERNAME
export SPRING_DATASOURCE_PASSWORD=$POSTGRES_PASSWORD

echo $POSTGRES_PASSWORD
# Start your Spring Boot application
java -jar test.jar
