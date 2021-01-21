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
2. Configure all .env docker files.
3. Open the file `auth.json` from directory ./docker/image/php and add your
   [repo.magento.com](http://devdocs.magento.com/guides/v2.0/install-gde/prereq/connect-auth.html) credentials

```
"username": "<public_key>",
"password": "<private_key>"
```

4. Open a terminal that allows you to run Docker Compose CLI application.
5. Change directory in terminal to the directory where the step 1 was performed.
6. Build the docker images with next command:

```
docker-compose up -d --build app
```

7. Add the next text in hosts file of your OS system:

```
127.0.0.1 magento.loc
127.0.0.1 mailcatcher.loc:1080
```

8. Open the browser and type the next link: http://magento.loc/
9. Check MailCatcher link: http://mailcatcher.loc:1080/
