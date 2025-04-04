# API Docker Test

Practice repo for enabling a basic API (using [FastAPI](https://fastapi.tiangolo.com/)), building a Docker image, and running it off a Docker container.

## Create the virtual environment

`make venv`

Dependencies in `api/requirements.txt`

## Run the API

`fastapi dev api/main.py`

This runs the API off of port `8080` of your local machine.

## Docker Image

`make docker-build`

Creates the Docker image for the above API.

## Run the Docker Container

`docker run -d --name wawa-api -p 8080:80 wawa-api:0.1.0`

or

`make docker-run`

Runs the API off of port `8080` of the local machine in the background.

## Clean Virtual Environment

`make clean`

