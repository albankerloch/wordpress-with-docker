FROM debian:buster
RUN apt-get update && \
	apt-get install -y nginx systemd