#

## Create Docker Image

```
podman build -t quay.io/markd/ibi-post-config:v2 . && \
  podman push quay.io/markd/ibi-post-config:v2
```

## Debugging pod in cluster

If you need to debug your ansible in a live cluster, you can use the `k8s\ibi_post_config_debug.yaml` definition file to create a long running pod in your cluster. Then use `oc rsh <podname>` to connect to the pod and use `vi` to edit the `ibi_post_config.yaml` file located in `/ansible`.