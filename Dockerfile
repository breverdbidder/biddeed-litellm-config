FROM ghcr.io/berriai/litellm:main-stable

ENV PORT=10000

CMD ["litellm", "--port", "10000", "--host", "0.0.0.0"]
