FROM ghcr.io/berriai/litellm:main-stable

WORKDIR /app

# Respect PORT environment variable (Render requirement)
ENV PORT=10000

# Start litellm with both models
# CRITICAL: Must bind to 0.0.0.0 for Render (not localhost)
CMD litellm \
    --model gemini/gemini-2.0-flash-exp \
    --model anthropic/claude-sonnet-4-20250514 \
    --host 0.0.0.0 \
    --port ${PORT}
