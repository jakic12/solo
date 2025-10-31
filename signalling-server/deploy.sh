#!/bin/bash
sudo docker build -t plojyon/solo-signal:latest .
sudo docker push plojyon/solo-signal:latest

../deploy.sh
