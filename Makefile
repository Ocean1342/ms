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
	docker compose exec -it app_order bash

tonginx:
	docker compose exec -it nginx.ms-order /bin/sh

log:
	docker compose logs $(cnt)

ps:
	docker compose ps