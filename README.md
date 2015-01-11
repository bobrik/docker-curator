# Curator in docker

This is dockerized version of elasticsearch curator, tool to manage time-based indices.

## Why this image

This image keeps up to date with curator releases and has tags in docker registry!

## Usage

Image entrypoint is set to curator script, so just run the image:

```
docker run --rm bobrik/curator:2.1.0 --help
```

Pick whatever version you need.
