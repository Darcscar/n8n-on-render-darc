FROM n8nio/n8n:latest

# Expose port for Render
EXPOSE 5678

# Start n8n with tunnel enabled (public URL mapping)
CMD ["n8n", "start", "--tunnel"]
