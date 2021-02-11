FROM openjdk:8-jre-alpine


CMD echo "Application starting" && \
    java ${JAVA_OPTS}  -jar /app.jar

EXPOSE 4567

ADD target/*.jar /app.jar