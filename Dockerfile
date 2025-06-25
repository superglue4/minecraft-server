FROM openjdk:17-jdk

WORKDIR /app

RUN curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.6/builds/34/downloads/paper-1.21.6-34.jar

COPY eula.txt .

EXPOSE 25565

CMD ["java", "-Xmx2G", "-Xms1G", "-jar", "paper.jar", "nogui"]