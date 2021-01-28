#!/bin/sh

kubectl delete pods --all
kubectl delete deployment --all
kubectl delete service --all
kubectl delete pvc -all