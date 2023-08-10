FROM openjdk:17
LABEL maintainer="test"
WORKDIR /app
COPY target/*.jar /app/test.jar
ENV PORT 8080
EXPOSE $PORT

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh
#
## Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD ["bash","entrypoint.sh"]
#ENTRYPOINT ["java","-jar","/test.jar"]



#ENTRYPOINT ["java","-jar","/app/test.jar"]
