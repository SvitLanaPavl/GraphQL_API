FROM node:22

WORKDIR /my-node

ENV TZ=America/Chicago
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update --fix-missing && \
    apt-get upgrade -y --fix-missing && \
    apt-get install -y git curl
    
RUN npm init -y

COPY package*.json ./
RUN npm install
RUN npm install express graphql express-graphql lodash nodemon apollo-boost graphql react-apollo mongoose --save
COPY . .
EXPOSE 4000