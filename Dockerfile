FROM amazoncorretto:8

WORKDIR /app

COPY . .

RUN mvn clean package

RUN mvnw package -DskipTests

EXPOSE 8080

CMD ["sh", "-c", "java", "-jar", "./target/docker-example-1.1.3.jar"]









# RUN mkdir -p /app
# WORKDIR /app
# ADD . /app
# #RUN --mount=type=cache,target=/root/.m2 ./mvnw -f ./pom.xml clean package
# COPY pom.xml /app/pom.xml
# COPY . .
# RUN mvn clean package

# FROM openjdk:11



# RUN apt-get update && apt-get install librrds-perl rrdtool -y

# RUN ./mvnw package -DskipTests

# EXPOSE 8080
# ENTRYPOINT ["sh", "-c", "java", "-jar", "docker-example-1.1.3.jar"]
# CMD ["-start"]