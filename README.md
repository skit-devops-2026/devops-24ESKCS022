# Campus Connect

## Author

| Roll No. | Name | GitHub username |
|---|---|---|
| 24ESKCS022 | Aditya Sinha | sinhaadityacs-oss |

## About

Campus Connect is a web-based platform designed to help students discover campus events and stay connected with activities happening in their college. It provides a simple interface for viewing and accessing information about campus events.

## Tech stack

- Frontend: HTML, CSS, JavaScript
- Backend: None
- Database: None
## Live Deployment

The application is deployed using GitHub Pages.

Live URL: https://skit-devops-2026.github.io/devops-24ESKCS022/

## Docker Image

Docker Hub image: `aditya3214/campus-connect:1.0`

## Monitoring

Prometheus and Blackbox Exporter monitor the website's HTTP availability. Grafana provides a dashboard for website availability, response time, and HTTP status code.

## Project Structure

- `index.html` - Home page
- `events.html` - Events page
- `css/` - CSS files
- `js/` - JavaScript files

## Running locally

```bash
make install
make run
```

