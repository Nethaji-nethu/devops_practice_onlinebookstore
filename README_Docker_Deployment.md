To start deploying and using directly using docker-compose,

1. Clone this repository.
2. cd into the base folder where all the Dockerfile.* files are present.
3. run below commands
   
      #to BUILD an image out of this
      `docker-compose build`

      #to spin up the app,db containers in the DETACHED mode/background
      `docker-compose up -d`
   
5. Once done, confirm the same via `docker ps` command that 2 containers are running (app and db) on ports 8080, 3306 respectively.
6. then on the docker host, give `curl -vL http://localhost:8080/onlinebookstore/` command or in your browser open `http://dockerhost-dns:8080/onlinebookstore/` or `http://dockerhost-ip:8080/onlinebookstore/`
