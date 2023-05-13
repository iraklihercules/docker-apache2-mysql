
# General
.PHONY:
up:
	docker-compose up -d

.PHONY:
down:
	docker-compose down

.PHONY:
clear-data:
	rm -rf mysql/data

# PHP
.PHONY:
shell:
	docker exec -it hercules_app bash


# MySQL
.PHONY:
mysql-shell:
	docker exec -it hercules_mysql bash

.PHONY:
mysql-console:
	docker exec -it hercules_mysql bash -c 'mysql -u root -ptest'

# Database
.PHONY:
db-dump:
	docker exec -it hercules_mysql bash -c '/dump/generate.sh'

.PHONY:
db-restore:
	docker exec -it hercules_mysql bash -c '/dump/populate.sh'
