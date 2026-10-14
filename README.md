# Campus Connect

Campus Connect is a web-based platform that helps students discover campus events and stay informed about activities happening in their college.

## Author

| Roll No. | Name | GitHub Username |
|---|---|---|
| 24ESKCS022 | Aditya Sinha | sinhaadityacs-oss |

## Live Deployment

**Live URL:** https://skit-devops-2026.github.io/devops-24ESKCS022/

## Tech Stack

- **Frontend:** HTML, CSS, JavaScript
- **Web Server:** Nginx
- **Containerization:** Docker and Docker Compose
- **Monitoring:** Prometheus, Blackbox Exporter and Grafana
- **Orchestration:** Kubernetes using kind
- **CI:** GitHub Actions

**Backend:** None  
**Database:** None

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

Open http://localhost:8081 in your browser.

## Health Endpoint

The Docker container exposes a health endpoint at:

`http://localhost:8081/health`

It returns the commit SHA used when the image was built.

Example response:

```text
57252ac05fc8acbb06496737db60682b7413ddb0
```

## Monitoring

The project uses Prometheus and Blackbox Exporter to monitor website availability. Grafana provides a dashboard for viewing:

- Website availability (`probe_success`)
- Response time (`probe_duration_seconds`)
- HTTP status code (`probe_http_status_code`)

Monitoring configuration and dashboard files are stored in the `monitoring/` directory.

## Kubernetes Deployment

Kubernetes manifests are available in the `k8s/` directory:

- `deployment.yaml` — defines the application deployment.
- `service.yaml` — exposes the application through a Kubernetes Service.

The manifests use the Docker Hub image:

`aditya3214/campus-connect:1.0`

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
│   ├── prometheus.yml
│   ├── blackbox.yml
│   └── dashboard.json
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── docs/
├── Dockerfile
├── docker-compose.yml
├── Makefile
└── README.md
```

## Run Locally

The project is a static frontend and does not require a backend or database.

```bash
make install
make test
make build
make run
```

## Run with Docker Compose

Start the application and monitoring services:

```bash
docker compose up -d --build
```

Access the services locally:

- **Application:** http://localhost:8081
- **Prometheus:** http://localhost:9090
- **Grafana:** http://localhost:3000
- **Blackbox Exporter:** http://localhost:9115

Stop the services:

```bash
docker compose down
```

## CI

GitHub Actions runs repository hygiene checks and the project's test and build commands on pushes and pull requests.
