FROM ubuntu
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install nodejs -y
WORKDIR /opt/first-docker-app
COPY . /opt/first-docker-app/
CMD ["node", "index.js"]; 