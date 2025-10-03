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

# Force Node to prefer IPv4 (fix Supabase ENETUNREACH)
ENV NODE_OPTIONS="--dns-result-order=ipv4first"

# Expose port
EXPOSE 10000

# Start n8n directly (no build step needed)
CMD ["npx", "n8n", "start"]
