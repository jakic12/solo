#!/bin/bash

# Install deployment using Helm
helm uninstall hello-world
helm install hello-world $(dirname "$0")/helm

# helm upgrade --install hello-world $(dirname "$0")/helm


