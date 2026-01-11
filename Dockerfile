FROM ghcr.io/berriai/litellm:main-stable

WORKDIR /app

# Copy config file
COPY litellm_config.yaml /app/config.yaml

# Set port
ENV PORT=10000

# Start with config file
CMD ["litellm", "--config", "/app/config.yaml", "--port", "10000", "--host", "0.0.0.0"]
