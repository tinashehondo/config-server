#TO build and run docker image
docker build --tag=config-server .
docker container run -d -p 17111:17111 --name config-server config-server
docker container logs -f config-server



