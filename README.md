# CS2080_16nov

Contains dockerfile to build a Ubuntu image running code-server with zsh installed

Example:
docker run -it -d -p 80:8080 --name code-server code-server-image

To expose the server locally at 127.0.0.1:80, run:
docker run -it -d -p 127.0.0.1:80:8080 --name code-server code-server-image
