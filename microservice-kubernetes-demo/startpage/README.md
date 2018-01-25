# Startpage

*When you use kubernetes-deploy.sh in the parent directory to install the demo you don't need to do anything in this directory.*

This directory represents the definition for the entry page of the multiple microservices.
It is not based on an individual container but instead uses the nginx default container and
just adds content by using a Kubernetes configMap.

The configMap is defined using:

```
kubectl create configmap startpage-content --from-file=content
```

This defines a ConfigMap Entry that contains all files in the directory content (currently only an index.html)

This will then be mounted into the nginx-container. The respective part of the definition looks like that:

```
        volumeMounts:
        - name: content
          mountPath: /usr/share/nginx/html/
      volumes:
        - name: content
          configMap:
            name: startpage-content
```
