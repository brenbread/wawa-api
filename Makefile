SHELL := /bin/bash -e -o pipefail

REPO_NAME := brenbread/wawa-api
CONTAINER_NAME := wawa-api
VERSION := 0.1.0
VENV_NAME := venv

$(VENV_NAME): api/requirements.txt
	python3 -m $(VENV_NAME) $@ ;\
	source ./$@/bin/activate ;\
	python -m pip install -U pip setuptools ;\
	python -m pip install wheel; \
	python -m pip install -r $?
	pip install "fastapi[standard]"
	touch $@

docker-build:
	docker build . -t $(REPO_NAME):$(VERSION)

docker-run:
	docker run -d --name $(CONTAINER_NAME) -p 8080:80 $(REPO_NAME):$(VERSION)

.PHONY: clean
clean:
	rm -rf $(VENV_NAME)