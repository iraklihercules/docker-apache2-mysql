# Docker Apache2 Template #

This is a basic Docker template with `Apache2` `PHP` `MySQL` and `phpMyAdmin` services.

* [http://localhost:8080](http://localhost:8080) - Website
* [http://localhost:8081](http://localhost:8081) - phpMyAdmin (test:test)


### 1. What the app does ###

1. Creates a collection
2. Inserts 2 users
3. Gets one user back
4. Displays the user

```
Array
(
    [username] => John Doe
    [email] => john.doe@example.com
    [created_on] => {creation_date}
)
```


### 2. Software requirements ###

* [Git](https://git-scm.com/)
* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)


### 3. How to run the project ###

* Clone the repository
* Enter the project directory
* Run `docker-compose up -d` or `make up` (Make command may require installation).


### 4. MySQL Troubleshooting ###
```
# Connection refused error:
SQLSTATE[HY000] [2002] Connection refused

# Solution:
docker exec -it hercules_mysql bash

# With the default password
mysql -u root -ptest
ALTER USER test IDENTIFIED WITH mysql_native_password BY 'test';

# Update the root password
mysqladmin -u root password newpassword
mysql -u root -pnewpassword
ALTER USER test IDENTIFIED WITH mysql_native_password BY 'test';

docker exec -it hercules_mysql bash
mysql -u root -ptest
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));
```
