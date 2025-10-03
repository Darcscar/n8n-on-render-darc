# Use official Node 20 slim image
FROM node:20-slim

# Set working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies (fix peer deps)
RUN npm install --legacy-peer-deps

# Copy rest of the app
COPY . .

# Expose port
EXPOSE 10000

# Start n8n and force IPv4 at runtime
CMD ["sh", "-c", "NODE_OPTIONS='--dns-result-order=ipv4first' npx n8n start"]

