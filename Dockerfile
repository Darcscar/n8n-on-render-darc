# Use official n8n image
FROM n8nio/n8n:latest

# Expose default n8n port
EXPOSE 5678

# Use bash to start n8n with Render PORT fallback
CMD ["bash", "-c", "export N8N_PORT=${PORT:-5678} && n8n"]
