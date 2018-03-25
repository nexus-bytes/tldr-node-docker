TLDR Pages
==========

This is a Docker image to run the node-client for tldr pages.

tldr pages: http://tldr.sh/
node client: https://github.com/tldr-pages/tldr-node-client

## Usage

Build an image from this Dockerfile:
```
docker build -t tldr-pages:latest . 
```

Run a container from this image:
```
docker run --rm -v ~/.tldrrc:/home/default/.tldrrc -v ~/.tldr:/home/default/.tldr tldr-pages <command>
```

Make life easy with an alias:
```
alias tldr='docker run --rm -v ~/.tldrrc:/home/default/.tldrrc -v ~/.tldr:/home/default/.tldr tldr-pages'
```

