# Curator in docker

This is dockerized version of elasticsearch curator,
tool to manage time-based indices.

## Why this image

This image keeps up to date with curator releases and has tags
in the docker registry. It is also based on minimal `alpine` image,
resulting in a just 50mb image.

## Usage

Image entrypoint is set to curator script, so just run the image:

```
docker run --rm bobrik/curator:4.0.4 --help
```

Pick whatever version you need.

### Connect to linked Elasticsearch container

When we run Elasticsearch as a docker container, we can link it 
when starting up the curator container to automatically set the
`--host` and `--port` parameters of curator with the appropriate values
provided by Docker:

```
docker run -d --name myElasticSearch elasticsearch:latest
docker run --rm --link myElasticSearch:elasticsearch bobrik/curator:3.0.3 show indices --all-indices
```

**Note**: The name of the link needs to be `elasticsearch`. 
