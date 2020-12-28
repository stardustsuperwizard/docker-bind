# docker-bind

create a directory locally that has your bind files in it.

run makefile script.

run this command:

docker run -d --net=mynet --ip=192.168.1.2 -v ~/bind/config:/etc/bind/import --name container-bind bind
