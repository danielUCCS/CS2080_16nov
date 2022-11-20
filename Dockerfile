# Build the image on top of a ubuntu image
FROM ubuntu

EXPOSE 8080

# Update packages, install zsh and curl
RUN apt update \
&& apt install -y zsh curl

# Install code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Start code-server **No authentication, not secure
CMD code-server --bind-addr 0.0.0.0:8080 --auth none
