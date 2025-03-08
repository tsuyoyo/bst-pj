# BST Database

Database management system for BST project using PostgreSQL.

## Setup

### Prerequisites

- Docker
- Docker Compose

### Start and Stop Development Environment

```bash
# Start development environment
cd docker
docker-compose up -d

# Stop development environment
docker-compose down

# Stop and remove all data
docker-compose down -v
```

### Database Connection

#### Connection Information

- Host: localhost
- Port: 5432
- Database: bst_db
- User: bst_admin
- Password: bst_password

#### Connect using psql (Command Line)

```bash
# If PostgreSQL client is installed
psql postgres://bst_user:bst_password@localhost:5432/bst_db

# Or connect via Docker container
# Check container name
docker ps

# Connect using the displayed container name
docker exec -it <container_name> psql -U <POSTGRES_USER> -d <POSTGRES_DB>

# Example:
docker exec -it bst_postgres psql -U bst_admin -d bst_db
```

##### Fundamental Commands of psql

```bash
# Show all databases
\l

# Show all tables
\dt
```

#### Connect using GUI Client (pgAdmin)

- Install [pgAdmin](https://www.pgadmin.org/)

##### How to query data from pgAdmin

<img src="./readme_images/pgAdmin4_how_to_query_01.png" width="500">

<img src="./readme_images/pgAdmin4_how_to_query_02.png" width="500">

## Migrations

Migration files are located in the `migrations` directory.
They are automatically executed during database initialization.

### Running Migrations

```bash
# Create a new migration
npm run migrate:create my_migration_name

# Run migrations in development environment
npm run migrate:dev

# Rollback migrations
npm run migrate:down
```
