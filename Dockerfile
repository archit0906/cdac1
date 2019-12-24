FROM centos:7
MAINTAINER FAIZ <faiz@cdac.in>
RUN yum install httpd -y
ADD index.html /var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
