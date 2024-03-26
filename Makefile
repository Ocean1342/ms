ifneq ("$(wildcard .env)","")
    include .env
endif

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

build:
	docker compose build

stop-all:
	docker ps -q|xargs docker stop

tophp:
	docker compose exec -it php bash

tonginx:
	docker compose exec -it nginx /bin/sh

log:
	docker compose logs $(с)

ps:
	docker compose ps

inspect:
	docker inspect $(c)