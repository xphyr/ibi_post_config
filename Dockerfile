FROM fedora:latest
RUN dnf install -y ansible
RUN mkdir -p /ansible/dynamic
COPY ibi_post_config.yaml /ansible