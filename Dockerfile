FROM openjdk:8-jre-stretch
EXPOSE 8080
RUN useradd -ms /bin/bash insgw
WORKDIR /home/insgw
USER insgw
ADD /target/gateway-0.0.1-SNAPSHOT.jar /home/insgw/app.jar
ENTRYPOINT ["java", "-jar", "/home/insgw/app.jar"]