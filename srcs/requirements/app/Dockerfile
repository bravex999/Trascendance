FROM debian:bookworm
RUN apt-get update && apt-get install -y nodejs npm && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm", "run", "dev"]
