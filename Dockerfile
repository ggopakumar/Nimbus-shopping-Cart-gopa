 
FROM maven:3.6.1-jdk-11-slim AS build  
COPY src /usr/src/app/src  
COPY pom.xml /usr/src/app  
RUN mvn -f /usr/src/app/pom.xml clean package -DskipTests

FROM gcr.io/distroless/java  
COPY --from=build /usr/src/app/target/*.jar /app.jar  

EXPOSE ${ETAILER_UI_PORT}
ENTRYPOINT ["java","-jar","/app.jar"]
 
