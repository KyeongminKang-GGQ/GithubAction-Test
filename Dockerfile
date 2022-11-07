FROM node:14-alpine as app

WORKDIR /home/app
COPY . .

ARG VERSION 
ENV VERSION=${VERSION}

RUN npm install
RUN npm run build