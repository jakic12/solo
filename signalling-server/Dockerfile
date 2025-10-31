FROM rust:latest AS builder
WORKDIR /app

# Cache dependencies
COPY Cargo.toml Cargo.lock ./
RUN mkdir src && echo "fn main() {}" > src/main.rs
RUN cargo build --release

# Compile real app
COPY . .
RUN rm -f target/release/deps/solo_signal*
RUN cargo build --release --bin solo-signal

FROM debian:bookworm-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates && \
    rm -rf /var/lib/apt/lists/*

COPY --from=builder /app/target/release/solo-signal /usr/local/bin/
ENV RUST_LOG=info
EXPOSE 3000
ENTRYPOINT ["/usr/local/bin/solo-signal"]
