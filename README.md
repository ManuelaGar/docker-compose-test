# Docker-Compose Test with MySQL

This is an excercise in which a docker container is created using Docker-compose and a basic database is developed inside this container.

## Getting Started



### Prerequisites

1. Install Docker and Docker compose. To check if they are already installed run 'docker --version' in the terminal or 'docker-compose --version'.
This resources might be of use to get started:
    - https://www.docker.com/get-started
    - https://docs.docker.com/compose/gettingstarted/
    - https://docs.docker.com/compose/reference/
    - https://dev.mysql.com/doc/refman/8.0/en/getting-information.html
    - https://medium.com/better-programming/setting-up-mysql-database-in-a-docker-d6c69a3e9afe
    - https://medium.com/@chrischuck35/how-to-create-a-mysql-instance-with-docker-compose-1598f3cc1bee
    - https://www.youtube.com/watch?v=kOrGN36ViaU


2. Install MySQL Workbench:
    - https://www.mysql.com/products/workbench/


### Usage


1. Create a Docker-compose YAML file for a MySQL Container

```python
    mkdir db-docker
    cd db-docker
    touch docker-compose.yml
```

2. Open the docker compose file and edit it

```python
    open docker-compose.yml
```
    Here is an example of how it should look (it doesn't necessarily has to look that way):
```python
    version: '3'

    services:

      mysql-development:
        image: mysql:8.0.17
        environment:
          MYSQL_ROOT_PASSWORD: helloworld
          MYSQL_DATABASE: testapp
        ports:
          - "3308:3306"
```
    Run the following comands on the terminal:
```python
    docker-compose up -d
    docker-compose ps
```
    It should look like this:
    ![alt text](https://miro.medium.com/max/2666/1*L24I2k1rUQkB_JfbucfIKA.png)

3. Connect to the MySQL database running in a container or run MySQL in the terminal

    ![alt text](https://miro.medium.com/max/1598/1*na_JACaLn-0o-kjbSbzUAg.png)
    The password is 'helloworld'.
    Then you can start creating a table in the database and populating it with information.
    
    The other alternative is runing MySQL in the terminal:

```python
    mysql -u root -database testapp -p
```

4. Exit the container
```python
docker-compose stop
docker-compose down --volume
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)


## Authors

* **Manuela García**


## Acknowledgments

* Ashutosh Karna
* Hussein Nasser

