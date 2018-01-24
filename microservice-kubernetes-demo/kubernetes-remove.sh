#!/bin/sh
kubectl delete -f apache/apache.yaml
kubectl delete -f microservice-kubernetes-demo-catalog/catalog.yaml
kubectl delete -f microservice-kubernetes-demo-customer/customer.yaml
kubectl delete -f microservice-kubernetes-demo-order/order.yaml
kubectl delete -f microservice-kubernetes-demo-hystrix-dashboard/hystrix-dashboard.yaml
