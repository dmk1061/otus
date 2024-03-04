FROM ubuntu:latest

RUN apt-get update &&  apt-get install -y openjdk-19-jdk

ENV JAVA_HOME /usr/lib/jvm/java-19-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH

WORKDIR /usr/src/app/

COPY /out/artifacts/Micro_jar/Micro.jar /usr/src/app/

EXPOSE 8000
CMD ["java", "-jar", "Micro.jar"]

