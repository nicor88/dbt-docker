![CD status](https://github.com/nicor88/dbt-docker/actions/workflows/dockerhub_publishing.yml/badge.svg)


# dbt-docker
A minimal image to run dbt with Docker. 
The repo contains also a continuous delivery to publish new Docker image to Dockerhub.

## Requirements
* Docker

## Commands
* `make build`: build the image
* `make test-build`: build the image, and then run `dbt --version` to check that everything works properly
* `make dhub-push`: push the image to Dockerhub
