
FROM openjdk:16-jdk-alpine

WORKDIR /geyser/

COPY Geyser.jar /usr/bin/Geyser.jar

COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 19132
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["java", "-Xmx512M", "-Xms512M", "-jar", "/usr/bin/Geyser.jar"]