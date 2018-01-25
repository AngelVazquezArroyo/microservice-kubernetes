# Installing Ingress for the Demo

## Using minikube

When your runtime environment is minikube you can enable an ingress controller as addon using:

```
minikube addons enable ingress
```

You can then access the services using the following URL:

TODO

## Using helm

If you installed the demo on another kubernetes environment you can install an ingress controller using
the Kubernetes package management [helm](https://helm.sh/).

First install it on your local plattform. (e.g. `brew install helm` on a Mac). Then initialize it in you Kubernetes
cluster. This is done by starting: 

```
helm init
```

As the next step you can install the ingress controller. We are using the nginx-ingress controller from the helm 
stable repository. This directory also contains some value definitions for a local controller that runs in a 
kubernetes environment based on [Docker for Mac](https://docs.docker.com/docker-for-mac/). Just run:

```
helm install --name ingress --values values.yaml stable/nginx-ingress
```

The application is then available under: [http://localhost:32080/](http://localhost:32080/)
