DIR = test2
COMP = docker-compose
CONT = test-nginx\
		test-db\
		test-wp
IMG = nginx:test\
		wp:test\
		db:test
#VOL = $(DIR)_wp\
#		$(DIR)_db

all : run

run : 
	$(COMP) up -d
	docker ps -a

clean : 
	docker stop $(CONT)

fclean : clean
	docker rm $(CONT)
	docker image rm $(IMG)
#	docker volume rm -f $(VOL)

re :
	$(COMP) build
