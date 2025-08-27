# Use the official n8n image
FROM n8nio/n8n:latest

# Expose the n8n default port
EXPOSE 5678

# Start n8n
CMD ["tini", "--", "n8n"]
