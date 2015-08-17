#
# MAINTAINER        ChenYiChao <cycxhen@hotmail.com>
# DOCKER-VERSION    1.7.1
#
# Dockerizing nginx: Dockerfile for building base-sshd images
#

FROM	   xinghen/centos:6
MAINTAINER ChenYiChao <cycxhen@hotmail.com>

RUN     rpm -ivh http://58.68.xx.xx/scripts/nginx-1.9.3-1.el6.x86_64.rpm

EXPOSE	80

ADD	supervisor_nginx.conf /etc/supervisor.conf.d/nginx.conf
