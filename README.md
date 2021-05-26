# dbt-docker
A minimal image to run dbt with Docker

## Requirements
* Docker

## Commands
* `make build`: build the image
* `make test-build`: build the image, and then run `dbt --version` to check that everything works properly
* `make dhub-push`: push the image to Dockerhub
