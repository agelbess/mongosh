FROM debian:latest

RUN apt-get update && apt-get install -y wget && \
    wget https://downloads.mongodb.com/compass/mongodb-mongosh_1.5.4_amd64.deb && \
    dpkg -i mongodb-mongosh_1.5.4_amd64.deb

COPY /mongo-script.js /mongo-script.js

ENTRYPOINT ["mongosh", "-f",  "mongo-script.js"]
