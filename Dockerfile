FROM openjdk:17
LABEL maintainer="test"
ADD target/test.jar test.jar
ENV PORT 8080
EXPOSE $PORT

# Copies your code file from your action repository to the filesystem path `/` of the container
#COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["java","-jar","/test.jar"]
