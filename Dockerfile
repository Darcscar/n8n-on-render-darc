FROM node:20-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --legacy-peer-deps

COPY . .

RUN npm run build

ENV NODE_OPTIONS="--dns-result-order=ipv4first"

CMD ["npx", "n8n", "start"]
