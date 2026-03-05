FROM node:20-slim

RUN apt-get update && apt-get install -y --no-install-recommends curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package*.json ./

RUN npm ci --production

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
