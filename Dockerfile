FROM openjdk:8
ARG JAR_FILE

USER 12:acn_group
COPY --chown=12 ./target/${JAR_FILE} /src/share/order-management.jar

WORKDIR /src/share/

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/urandom","-jar","order-management.jar"]

