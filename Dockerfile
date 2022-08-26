FROM openjdk:8-jre-slim

COPY --from=build home/ec2-user/jenkins/workspace/gradle-global/build/libs/*.jar /app/SpringBootRestApp-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/app/SpringBootRestApp-0.0.1-SNAPSHOT.jar"]
