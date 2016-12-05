FROM centos:6
MAINTAINER "John Hazelwood" <jhazelwo@users.noreply.github.com>
ENV VERSION 0.7.1
RUN yum clean all && yum -y upgrade && yum -y install which yum-utils unzip wget
RUN install -d -o 0 -g 0 -m 0700 /consul
WORKDIR /consul
RUN wget -q https://releases.hashicorp.com/consul/${VERSION}/consul_${VERSION}_linux_amd64.zip && unzip consul*.zip
RUN install -d -o 0 -g 0 -m 0700 /consul/conf.d /consul/data
CMD /bin/bash
