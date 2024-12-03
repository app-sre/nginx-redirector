FROM registry.access.redhat.com/ubi9/nginx-120:latest

COPY nginx.conf.template /
COPY docker-entrypoint.sh /

EXPOSE 8080

USER 1001

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-c", "/tmp/nginx.conf"]
