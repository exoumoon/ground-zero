# List available recipes.
default:
    @just --list

# Refresh `packwiz` and `git` index.
refresh:
    packwiz refresh
    @git add .
    @git status

# Start the server container.
start:
    docker compose up --detach --build
    docker compose logs --follow

# Stop the server container.
stop:
    docker compose down

# Restart the server container.
restart: stop start
