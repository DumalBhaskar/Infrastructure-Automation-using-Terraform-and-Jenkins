FROM openjdk:17

EXPOSE 8080

ADD target/spring-boot.jar spring-boot.jar

ENTRYPOINT ["java","-jar","/spring-boot.jar"]
