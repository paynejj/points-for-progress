# Build the rust backend
FROM rust:1.70-slim-buster AS build-rust
WORKDIR /usr/src/app
RUN apt-get update && apt-get install -y --no-install-recommends pkg-config libssl-dev libpq-dev
COPY ./Cargo.toml ./Cargo.lock ./diesel.toml ./rapid.toml ./
RUN cargo install --path .

# Build the node frontend
FROM node:20-alpine3.17 AS prod
WORKDIR /usr/src/app
RUN npm install -g pnpm@latest
COPY ./package.json ./pnpm-lock.yaml ./ 
RUN pnpm install --production
COPY . .

# Run the servers
