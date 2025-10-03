# Use official Node 20 slim image
FROM node:20-slim

WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --legacy-peer-deps

# Copy rest of the app
COPY . .

# Expose n8n port
EXPOSE 10000

# Start n8n forcing IPv4 (fix Supabase ENETUNREACH)
CMD ["sh", "-c", "NODE_OPTIONS='--dns-result-order=ipv4first' npx n8n start"]
