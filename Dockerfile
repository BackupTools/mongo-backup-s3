FROM ubuntu:18.04

RUN apt update && apt install -y wget gnupg \
	&& wget -qO - https://www.mongodb.org/static/pgp/server-4.0.asc | apt-key add - \
	&& echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list \
	&& apt update && apt install -y mongodb-org-tools=4.0.20 pigz \
	&& wget https://dl.minio.io/client/mc/release/linux-amd64/mc -O /sbin/mc && chmod +x /sbin/mc \
	&& apt remove -y wget gnupg && apt autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY entrypoint.sh .
ENTRYPOINT ["/entrypoint.sh"]
