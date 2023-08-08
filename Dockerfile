FROM openjdk:17
LABEL maintainer="test"
WORKDIR /app
RUN apt-get update && apt-get install -y dos2unix
COPY target/*.jar test.jar
ENV PORT 8080
EXPOSE $PORT

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /app
#
## Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD ["bash","entrypoint.sh"]
#ENTRYPOINT ["java","-jar","/test.jar"]



#ENTRYPOINT ["java","-jar","/app/test.jar"]
