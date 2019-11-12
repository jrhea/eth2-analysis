
build:
	docker build -t jrhea/ns3-docker .

run:
	docker run --rm -it -v `pwd`:/root/work -e DISPLAY=host.docker.internal:0 -v /tmp/.X11-unix:/tmp/.X11-unix jrhea/ns3-docker
