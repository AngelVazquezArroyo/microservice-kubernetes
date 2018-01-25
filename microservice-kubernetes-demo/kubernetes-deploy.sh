#!/bin/sh

# create a configMap for the startpage
kubectl create configmap startpage-content --from-file=startpage/content

#applying the definitions of all services
kubectl apply -f startpage/startpage.yaml
kubectl apply -f microservice-kubernetes-demo-catalog/catalog.yaml
kubectl apply -f microservice-kubernetes-demo-customer/customer.yaml
kubectl apply -f microservice-kubernetes-demo-order/order.yaml
kubectl apply -f microservice-kubernetes-demo-hystrix-dashboard/hystrix-dashboard.yaml
