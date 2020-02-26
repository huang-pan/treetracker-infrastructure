FROM node:8.12-slim

ENV DIR /opt/admin-api-server
RUN mkdir -p $DIR

COPY server $DIR

WORKDIR $DIR
RUN npm install

WORKDIR ${DIR}/server

ENTRYPOINT node server.js