
FROM java:8

VOLUME /tmp

COPY target/*.jar app.jar

EXPOSE ${ETAILER_UI_PORT}

ENTRYPOINT ["java","-jar","/app.jar"]