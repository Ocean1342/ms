ifneq ("$(wildcard .env)","")
    include .env
endif

up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

stop-all:
	docker ps -q|xargs docker stop

tophp:
	docker compose exec -it php bash

tonginx:
	docker compose exec -it nginx /bin/sh

log:
	docker compose logs $(cnt)

ps:
	docker compose ps

inspect:
	docker inspect $(c)