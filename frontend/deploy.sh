#!/bin/bash
sudo docker build -t plojyon/solo-frontend:latest .
sudo docker push plojyon/solo-frontend:latest

../deploy.sh
