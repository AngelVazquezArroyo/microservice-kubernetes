#!/bin/sh
kubectl apply -f apache/apache.yaml
kubectl apply -f microservice-kubernetes-demo-catalog/catalog.yaml
kubectl apply -f microservice-kubernetes-demo-customer/customer.yaml
kubectl apply -f microservice-kubernetes-demo-order/order.yaml
kubectl apply -f microservice-kubernetes-demo-hystrix-dashboard/hystrix-dashboard.yaml
