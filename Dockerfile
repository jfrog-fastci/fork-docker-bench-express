FROM node:20

RUN apt-get update && apt-get install -y vim less man-db wget telnet curl net-tools iputils-ping htop dnsutils strace

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
