FROM davidcaste/alpine-java-unlimited-jce:jre8
WORKDIR /opt
ADD build/libs/spring-cloud-client-gradle-*SNAPSHOT.jar /opt/app.jar
RUN sh -c 'touch /opt/app.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]