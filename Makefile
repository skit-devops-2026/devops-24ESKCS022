.PHONY: install test build run docker-build docker-up

install:
	@echo "No external dependencies required for this frontend project."

test:
	@bash tests/test.sh

build:
	@echo "Static HTML, CSS and JavaScript project - no build step required."

run:
	@echo "Open index.html in a browser to run the application."

# Needed from M4 onwards
docker-build:
	@echo "Docker build will be configured in M4."

docker-up:
	docker compose up --build
