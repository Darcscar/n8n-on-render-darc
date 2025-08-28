# Use official n8n image
FROM n8nio/n8n:latest

# Expose default n8n port
EXPOSE 5678

# Start n8n using Render-assigned port if available
CMD ["sh", "-c", "export N8N_PORT=${PORT:-5678} && n8n"]
