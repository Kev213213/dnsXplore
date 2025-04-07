# Use a lightweight Debian base image
FROM debian:bullseye-slim

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update packages and install bind9 and dnsutils (which includes nslookup)
RUN apt-get update && \
    apt-get install -y bind9 dnsutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose DNS port
EXPOSE 53/udp
EXPOSE 53/tcp

# Start BIND9 in foreground mode
CMD ["named", "-g"]
