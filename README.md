# k8s-flask-redis
Test, learning to deploy a very easy Flask Application with Redis, including Kubernetes (k8s)

🐳 Kubernetes Flask + Redis App — Ansible Installation Guide
📦 Install with Ansible
To deploy everything automatically, run:
ansible-playbook playbook.yml -K

🔧 What this playbook does:

✅ Updates the apt package cache

✅ Checks if Docker-CE is installed

❌ If not, it installs required dependencies, adds Docker GPG key and repo, and installs Docker-CE

✅ Checks if MicroK8s (Kubernetes) is installed

❌ If not, it installs MicroK8s

➕ Adds the current user to the microk8s group

✅ Enables required MicroK8s add-ons:
dns, ingress, storage, helm3, metrics-server

✅ Builds or pulls the Flask + Redis Docker image
✅ Loads the Docker image into MicroK8s
✅ Applies Kubernetes configuration files:

- ConfigMap and Secret
- PersistentVolume and PersistentVolumeClaim for Redis data
- Horizontal Pod Autoscaler (HPA)
- Redis and Flask Deployments + Services
- Ingress for browser access

🚀 After deployment, the following pods will be running:
2 × Flask pods
1 × Redis pod

Kubernetes will automatically scale the Flask pods based on CPU usage via the Horizontal Pod Autoscaler (HPA).

🌐 Access the Application
Once deployed, the app is available at:
http://flask.localhost

⚠️ IMPORTANT:

- You must manually point flask.localhost to 127.0.0.1 in your local /etc/hosts file.
  
Edit /etc/hosts:

Open the file with sudo:

sudo nano /etc/hosts

Add the following line at the bottom:
--> 127.0.0.1 flask.localhost

Save and close the file (CTRL+O, ENTER, then CTRL+X).

- You will also need to create the /mnt/data/redis-pv directory for the data store.
  
sudo mkdir -p /mnt/data/redis-pv

sudo chown root:root /mnt/data/redis-pv

sudo chmod 755 /mnt/data/redis-pv

