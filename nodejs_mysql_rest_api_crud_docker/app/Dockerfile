FROM node:12

COPY . /app

WORKDIR /app

RUN npm install
RUN npm install express
RUN npm install mysql

COPY . .

RUN apt-get update && apt-get install -y netcat

COPY wait.sh /wait.sh
RUN chmod +x /wait.sh
