FROM jenkins/jenkins

USER root

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
        python get-pip.py && \
        pip install ansible --upgrade

RUN apt-get update

RUN apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

RUN apt-get update \ 
	&& apt-cache policy docker-ce \ 
	&& apt-get -y install docker-ce 


RUN curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

RUN usermod -aG docker jenkins

USER jenkins
