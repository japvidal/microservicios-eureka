FROM openjdk:8-jdk-alpine

ADD /mnt/c/programming/microservicios/workspace/microservicios-eureka/target/microservicios-eureka-0.0.1-SNAPSHOT.jar microservicios-eureka.jar

ENTRYPOINT [ "java","-jar","/microservicios-eureka.jar" ]

EXPOSE 8762

