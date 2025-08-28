FROM node:20-bullseye

# Install n8n globally
RUN npm install -g n8n

# Expose port
EXPOSE 5678

# Set default command
CMD ["n8n"]
