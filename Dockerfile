FROM registry.centos.org/kbsingh/openshift-nginx:latest

MAINTAINER Jean-Francois Chevrette <jfchevrette@gmail.com>

USER root

RUN chmod -R 777 /var/lib/nginx

COPY nginx.conf.template /
COPY docker-entrypoint.sh /

EXPOSE 8080

USER 1001

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-c", "/tmp/nginx.conf"]
