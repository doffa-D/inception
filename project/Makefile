all: ascci_art
	@chmod +x srcs/requirements/tools/Creat_file.sh
	@sh srcs/requirements/tools/Creat_file.sh
	@docker-compose -p inception -f srcs/docker-compose.yml up -d

down:
	@docker-compose -p inception -f srcs/docker-compose.yml down 

stop:
	@docker-compose -p inception -f srcs/docker-compose.yml stop

delete:
	@sudo rm -rf /home/$(USER)/data

clean:
	@docker-compose -p inception -f srcs/docker-compose.yml down -v --remove-orphans --rmi all

fclean: clean
	@docker system prune -a
	@sudo rm -rf /home/$(USER)/data

re: clean all
	
# docker-compose -p inception -f srcs/docker-compose.yml ps

RED = \033[1;31m
BLINK = \033[5m
RESET = \033[0m
ascci_art:
	@clear
	@printf "$(BLINK)$(RED)\n"
	@echo " ██▓ ███▄    █  ▄████▄  ▓█████  ██▓███  ▄▄▄█████▓ ██▓ ▒█████   ███▄    █ "
	@echo "▓██▒ ██ ▀█   █ ▒██▀ ▀█  ▓█   ▀ ▓██░  ██▒▓  ██▒ ▓▒▓██▒▒██▒  ██▒ ██ ▀█   █ "
	@echo "▒██▒▓██  ▀█ ██▒▒▓█    ▄ ▒███   ▓██░ ██▓▒▒ ▓██░ ▒░▒██▒▒██░  ██▒▓██  ▀█ ██▒"
	@echo "░██░▓██▒  ▐▌██▒▒▓▓▄ ▄██▒▒▓█  ▄ ▒██▄█▓▒ ▒░ ▓██▓ ░ ░██░▒██   ██░▓██▒  ▐▌██▒"
	@echo "░██░▒██░   ▓██░▒ ▓███▀ ░░▒████▒▒██▒ ░  ░  ▒██▒ ░ ░██░░ ████▓▒░▒██░   ▓██░"
	@echo "░▓  ░ ▒░   ▒ ▒ ░ ░▒ ▒  ░░░ ▒░ ░▒▓▒░ ░  ░  ▒ ░░   ░▓  ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ "
	@echo " ▒ ░░ ░░   ░ ▒░  ░  ▒    ░ ░  ░░▒ ░         ░     ▒ ░  ░ ▒ ▒░ ░ ░░   ░ ▒░"
	@echo " ▒ ░   ░   ░ ░ ░           ░   ░░         ░       ▒ ░░ ░ ░ ▒     ░   ░ ░ "
	@echo " ░           ░ ░ ░         ░  ░                   ░      ░ ░           ░ "
	@echo "               ░                                                          $(RESET)"


