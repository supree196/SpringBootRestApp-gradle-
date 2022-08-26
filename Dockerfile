FROM openjdk:8-jre-slim

COPY --from=build home/ec2-user/jenkins/workspace/gradle-global/build/libs/*.jar /app/spring-boot-application.jar

ENTRYPOINT ["java","-jar","/app/spring-boot-application.jar"]
