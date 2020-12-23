FROM amazonlinux:2

RUN yum -y update \
	&& yum -y install tar git unzip python3

RUN curl --silent --location https://rpm.nodesource.com/setup_14.x | bash - \
	&& yum -y install nodejs

RUN npm update npm \
	&& npm install -g vue-cli \
	&& npm install -g http-server

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
	&& unzip awscliv2.zip \
	&& ./aws/install

RUN pip3 install aws-sam-cli

RUN yum clean all

WORKDIR /app

