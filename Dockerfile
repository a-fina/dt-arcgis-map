FROM maven:3.9-eclipse-temurin-11 as builder
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ src/
RUN mvn clean package -DskipTests

FROM eclipse-temurin:11-jre-alpine
RUN apk add --no-cache curl tomcat
WORKDIR /app
COPY --from=builder /app/target/arcgis-map.war /opt/tomcat/webapps/ROOT.war
EXPOSE 8080
HEALTHCHECK --interval=30s --timeout=3s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:8080/ || exit 1
CMD ["catalina.sh", "run"]
