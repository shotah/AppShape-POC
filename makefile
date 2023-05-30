.SILENT: # Disable echo of commands
# Makefile for the performance_and_accessibility_api project
ifneq ("$(wildcard .env)","")
    include .env
endif

SHELL:=/bin/bash
export

# Runs when no target is specified
all: install test

# ###########################
# Install, Test and Lint (CI)
# ###########################
.PHONY : install
install :
	npm install
	npm run test:setup

.PHONY: test
test:
	npm run test

.PHONY: coverage
coverage:
	npm run coverage

.PHONY: lint
lint:
	npm run lint

.PHONY: fix
lint-fix:
	npm run fix

# ###########################
# Build and Start (Local)
# ###########################
.PHONY: build
build: install
	npm run build

.PHONY: start
start: build
	npm run function

# ###########################
# Other Commands (Misc)
# ###########################
.PHONY: clean
clean:
	- npm run "clean:powershell"


.PHONY: upgrade-all
upgrade-all: clean
	npm i -g npm-check-updates
	npx ncu -u
	npm update
