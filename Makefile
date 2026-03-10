NAME = transcendence
COMPOSE = docker compose -f srcs/docker-compose.yml -p $(NAME)

all: up

up:
	$(COMPOSE) up -d --build

down:
	$(COMPOSE) down

clean:
	$(COMPOSE) down --rmi all -v

fclean: clean
	docker system prune -af

re: fclean all

.PHONY: all up down clean fclean re
