# Campus Connect

## Author

| **Roll No.** | **Name** | **GitHub username** |
| ------------ | -------- | ------------------- |
| 24ESKCS022 | Aditya Sinha | sinhaadityacs-oss |

## About

Campus Connect is a web-based platform that helps students discover campus events and stay informed about activities happening in their college.

## Tech stack

- Frontend: HTML, CSS, JavaScript
- Backend: None
- Database: None

## Running locally

```bash
make install
make run
```

## Live URL

https://skit-devops-2026.github.io/devops-24ESKCS022/

## Health endpoint

`GET /health` returns the running commit SHA. See `Makefile` and the milestone sheet for why this is required.

The endpoint has been verified in the Docker container.

## Docker Image

Docker Hub image: `aditya3214/campus-connect:1.0`

Pull the image:

```bash
docker pull aditya3214/campus-connect:1.0
```

Run the container:

```bash
docker run -d --name campus-connect -p 8081:80 aditya3214/campus-connect:1.0
```

## Monitoring

Prometheus and Blackbox Exporter monitor website availability. Grafana provides a dashboard for availability, response time, and HTTP status code.

Monitoring configuration and dashboard files are stored in the `monitoring/` directory.

## Kubernetes Deployment

Kubernetes manifests are available in the `k8s/` directory:

- `deployment.yaml` — application deployment.
- `service.yaml` — application service.

## Project Structure

```text
.
├── index.html
├── events.html
├── css/
├── js/
├── tests/
├── scripts/
├── monitoring/
├── k8s/
├── docs/
├── Dockerfile
├── docker-compose.yml
├── Makefile
└── README.md
```

## Run with Docker Compose

```bash
docker compose up -d --build
```

- Application: http://localhost:8081
- Prometheus: http://localhost:9090
- Grafana: http://localhost:3000
- Blackbox Exporter: http://localhost:9115

Stop the services:

```bash
docker compose down
```

## CI

GitHub Actions runs repository hygiene checks and the project's test and build commands on pushes and pull requests.
