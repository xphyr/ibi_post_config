FROM fedora:latest
RUN dnf install -y ansible python-kubernetes python-jmespath \
  	&& dnf clean all \
  	&& rm -rf /var/cache/yum
RUN mkdir -p /ansible/dynamic
COPY ibi_post_config.yaml nmstate_config.yaml /ansible/
#COPY acm/klusterlet-crd-cm.yaml /ansible/dynamic
WORKDIR /ansible
CMD ["ansible-playbook", "ibi_post_config.yaml"]