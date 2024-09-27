FROM fedora:latest
RUN dnf install -y ansible python-kubernetes python-jmespath \
  	&& dnf clean all \
  	&& rm -rf /var/cache/yum
RUN mkdir -p /ansible/dynamic
COPY ibi_post_config.yaml /ansible