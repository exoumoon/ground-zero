default:
    @just --list

refresh:
    packwiz refresh
    @git add .
    @git status

restart:
    docker compose down
    docker compose up --detach --build
    docker compose logs --follow

export: refresh
    packwiz modrinth export --output Spectral.mrpack
