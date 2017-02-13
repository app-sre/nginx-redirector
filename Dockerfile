FROM centos:7

MAINTAINER Jean-Francois Chevrette <jfchevrette@gmail.com>

RUN sh -x && \
    yum -y install epel-release && \
    yum -y install nginx && \
    yum clean all

RUN chmod -R 777 /var/lib/nginx

COPY nginx.conf.template /
COPY docker-entrypoint.sh /

EXPOSE 8080

USER 1001

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-c", "/tmp/nginx.conf"]