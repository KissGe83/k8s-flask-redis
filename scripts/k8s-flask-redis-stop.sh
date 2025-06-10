!/bin/bash
microk8s kubectl delete -f ./k8s/config.yaml
microk8s kubectl delete -f ./k8s/secret.yaml
microk8s kubectl delete -f ./k8s/hpa.yaml
microk8s kubectl delete -f ./k8s/redis-deployment.yaml
microk8s kubectl delete -f ./k8s/redis-service.yaml
microk8s kubectl delete -f ./k8s/flask-deployment.yaml
microk8s kubectl delete -f ./k8s/flask-service.yaml
microk8s kubectl delete -f ./k8s/flask-ingress.yaml
microk8s kubectl delete -f ./k8s/redis-pvc.yaml
microk8s kubectl delete -f ./k8s/redis-pv.yaml
