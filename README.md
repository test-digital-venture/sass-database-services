# Database Services

A Docker Compose setup for local development databases and tools.

## Prerequisites

Create a shared Docker network:

```sh
docker network create shared_network
```

## Setup

1. Copy `.env.example` to `.env` and populate the values:

```sh
cp .env.example .env
```

2. Start all services:

```sh
docker compose up --build -d
```

Or start individual services as needed:

```sh
docker compose up -d postgres redis
```

Services are configured with `restart: "no"`, so they only run when explicitly started.

## Services & Ports

| Service | Host Port | Description |
|---------|-----------|-------------|
| PostgreSQL | 4601 | PostgreSQL 16 |
| Portainer | 4602 | Container management UI |
| Redis | 4603 | Redis 6.2 |
| MongoDB | 4604 | MongoDB with auth |
| MongoDB (no auth) | 4605 | MongoDB without auth |
| MySQL | 4606 | MySQL 8.0 |
| TiDB | 4607 | TiDB SQL port |
| TiDB Status | 4608 | TiDB status port |
| Adminer | 4609 | Database management UI |
| MinIO API | 4610 | S3-compatible object storage |
| MinIO Console | 4611 | MinIO web console |
| pgAdmin | 4614 | PostgreSQL management UI |
| Mongo Express | 4615 | MongoDB management UI |
| RedisInsight | 4616 | Redis management UI |
| RabbitMQ | 4617 | Message broker (AMQP) |
| RabbitMQ Management | 4618 | RabbitMQ management UI |
| Mailpit SMTP | 4619 | Local SMTP server for email testing |
| Mailpit UI | 4620 | Mailpit web UI |
| Meilisearch | 4621 | Full-text search engine |
| Redpanda (Kafka API) | 4622 | Kafka-compatible event streaming |
| Redpanda Schema Registry | 4623 | Schema Registry |
| Redpanda HTTP Proxy | 4624 | HTTP Proxy for Kafka |
| Redpanda Admin | 4625 | Redpanda admin API |
| Redpanda Console | 4626 | Redpanda web UI |
| Nginx HTTP | 4612 | Nginx HTTP |
| Nginx HTTPS | 4613 | Nginx HTTPS |

## Web UIs

- Portainer: `http://localhost:4602`
- Adminer: `http://localhost:4609`
- MinIO Console: `http://localhost:4611`
- pgAdmin: `http://localhost:4614` (login: `<BASE_USER>@admin.local` / `<BASE_PASSWORD>`)
- Mongo Express: `http://localhost:4615`
- RedisInsight: `http://localhost:4616`
- RabbitMQ Management: `http://localhost:4618` (login: `<BASE_USER>` / `<BASE_PASSWORD>`)
- Mailpit: `http://localhost:4620` (SMTP on port `4619`)
- Meilisearch: `http://localhost:4621` (master key: `<BASE_PASSWORD>`)
- Redpanda Console: `http://localhost:4626`

## Environment Variables

| Variable | Description |
|----------|-------------|
| `BASE_USER` | Shared username for services |
| `BASE_PASSWORD` | Shared password (must be >8 chars) |
| `DB_NAME` | Default database name |
| `DATA_DIR` | Host directory for persistent data volumes |
