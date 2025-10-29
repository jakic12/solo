#!/bin/bash
sudo docker build -t plojyon/solo-frontend:latest .
sudo docker push plojyon/solo-frontend:latest

# Sometimes does not work
# helm upgrade --install hello-world ../helm

helm uninstall hello-world
helm install hello-world ../helm

