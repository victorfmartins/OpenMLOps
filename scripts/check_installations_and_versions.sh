#!/bin/bash
echo "All object versions:"

echo ""
echo "git version:"
git --version

echo ""
echo "terraform version:"
terraform version

echo ""
echo "docker version:"
docker --version

echo ""
echo "aws version:"
aws --version

echo ""
echo "kubectl version:"
kubectl version

echo ""
echo "aws-iam-authenticator version:"
aws-iam-authenticator version

echo ""
echo "minikube version:"
minikube version
