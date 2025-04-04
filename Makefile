SHELL := /bin/bash -e -o pipefail

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
	docker build . -t wawa-api:$(VERSION)

run:


.PHONY: clean
clean:
	rm -rf $(VENV_NAME)