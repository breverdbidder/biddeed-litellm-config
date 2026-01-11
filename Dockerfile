FROM ghcr.io/berriai/litellm:main-stable

# Copy config file
COPY litellm_config.yaml /app/litellm_config.yaml

# Set environment variables from Railway
ENV PORT=4000

# Start LiteLLM with both models explicitly
CMD ["litellm", "--config", "/app/litellm_config.yaml", "--port", "4000"]
