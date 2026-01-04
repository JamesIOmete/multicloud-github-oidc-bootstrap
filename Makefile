SHELL := /usr/bin/env bash

.PHONY: fmt validate

fmt:
	terraform fmt -recursive

validate:
	./scripts/ci_validate.sh
