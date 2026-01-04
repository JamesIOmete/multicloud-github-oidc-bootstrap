SHELL := /usr/bin/env bash

.PHONY: fmt validate

fmt:
	terraform fmt -recursive

validate:
	./tools/ci/validate.sh
