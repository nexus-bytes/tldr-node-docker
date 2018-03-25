# Start with the official nodejs docker image
FROM node:latest

ENV USER default
RUN groupadd -r $USER && useradd -m -r -g $USER $USER
USER $USER
WORKDIR /home/$USER

# Install the node tldr client
RUN ["npm", "install", "tldr"]

# Run the tldr command
# Note that arguments passed to the 'docker run' command get
# forwarded to the entrypoint.
ENTRYPOINT ["node_modules/.bin/tldr"]

