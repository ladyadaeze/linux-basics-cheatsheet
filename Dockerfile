FROM ubuntu:22.04
RUN apt-get update && apt-get install -y bash
WORKDIR /app
COPY scripts/ ./scripts/
COPY logs/ ./logs/
COPY .env ./
CMD ["bash", "scripts/backup.sh"]
