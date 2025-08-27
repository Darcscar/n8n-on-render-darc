# Use the official n8n image
FROM n8nio/n8n:latest

# Expose the n8n port
EXPOSE 5678

# Start n8n using tini (process manager already included in the image)
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]

