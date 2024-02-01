# ==============================================================
# ==== Docker File Creazione Immagine MICRO-SERVICE-USER =======
# ==============================================================

FROM openjdk:11-jre-slim
LABEL maintainer="Paolo Acquaviva <paoloacqua@hotmail.it>"

ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
# ARG Xmx # Abilitare nel caso si voglia resettare, rivalorizzare tale valore in fase di build
# ARG Xss # Abilitare nel caso si voglia resettare, rivalorizzare tale valore in fase di build
ENV Xmx=-XX:MaxRAM=2048m Xss=-Xss512m Xms=-Xms2048m
ENV LC_ALL it_IT.UTF-8
ENV LANG it_IT.UTF-8
ENV LANGUAGE it_IT.UTF-8

WORKDIR /webapi

VOLUME ["/logs"]

RUN apt-get update -y && apt-get install -y locales locales-all

COPY /target/USER-MICRO-SERVICE-0.0.1-SNAPSHOT.jar user-ms.jar

ENTRYPOINT exec java $JAVA_OPTS $Xmx -XX:+UseSerialGC $Xss -jar user-ms.jar

#Generazione Immagine:
# docker build -t user-ms .

# Upload in dockerhub:
  
# docker login 

# docker tag 6580e0a93824 paoloacqua/user-ms

# docker push paoloacqua/user-ms

