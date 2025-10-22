# Build and deploy frontend image
cd client
sudo docker build -t plojyon/solo-frontend:latest .
sudo docker push plojyon/solo-frontend:latest
cd ..

# Import secrets
sops --decrypt secrets.enc.yaml | kubectl apply -f -

# Connect to k8s cluster
#export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
export KUBECONFIG=~/.kube/config

# Install deployment using Helm
#helm install hello-world ./helm
#helm upgrade hello-world ./helm
helm upgrade --install hello-world ./helm



