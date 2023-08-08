FROM openjdk:17
LABEL maintainer="test"
ADD target/test.jar test.jar
ENV PORT 8080
EXPOSE $PORT
