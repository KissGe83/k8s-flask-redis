!/bin/bash
microk8s ctr image import ~/k8s-flask-redis/flask-redis-app.tar
microk8s kubectl apply -f ./k8s/config.yaml
microk8s kubectl apply -f ./k8s/secret.yaml
microk8s kubectl apply -f ./k8s/hpa.yaml
microk8s kubectl apply -f ./k8s/redis-pv.yaml
microk8s kubectl apply -f ./k8s/redis-pvc.yaml
microk8s kubectl apply -f ./k8s/redis-deployment.yaml
microk8s kubectl apply -f ./k8s/redis-service.yaml
microk8s kubectl apply -f ./k8s/flask-deployment.yaml
microk8s kubectl apply -f ./k8s/flask-service.yaml
microk8s kubectl apply -f ./k8s/flask-ingress.yaml

