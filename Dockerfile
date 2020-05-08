FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY apiEncryptionKey.jks apiEncryptionKey.jks
COPY UnlimitedJCEPolicyJDK8/* /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/
COPY target/config-server-0.0.1-SNAPSHOT.jar config-server.jar
EXPOSE 17111
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","config-server.jar"]