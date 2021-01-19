## Note

The [victortodoran/docker-magento](https://github.com/victortodoran/docker-magento) repository was used as a basis.

## Disclaimer

Under no circumstance do NOT use this in production. This offers a quick way to start development with Magento2 locally.

## Requirements

This project requires Docker and Docker Compose installed on the machine. Please follow the Docker installation steps
from https://docs.docker.com/engine/installation/ and docker compose installation steps
from https://docs.docker.com/compose/install/.

## Installation

Please follow the next steps:

1. Download or clone this project in the directory you want to have the project installed.
2. Open a terminal that allows you to run Docker Compose CLI application.
3. Change directory in terminal to the directory where the step 1 was performed.
4. Build the docker images with next command:

`docker-compose up -d --build app`

5. Add the next text in hosts file of your OS system:

`172.20.0.3 magento.loc`

6. Open the browser and type the next link: http://magento.loc/

7. Open MailCatcher link: http://172.20.0.8:1080/

## Network IPs ##

| Container | IP |
|--------|--------|
|M2 NGINX|172.20.0.3|
|M2 PHP|172.20.0.4|
|M2 MySQl|172.20.0.5|
|M2 MailCatcher|172.20.0.8|
|M2 ElasticSearch|172.20.0.9|

## Enter magento(PHP) container to run commands

`docker-compose exec --user www-data phpfpm bash`
