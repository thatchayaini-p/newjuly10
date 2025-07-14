#!/bin/bash
echo "🔁 Rolling back Kubernetes deployment..."

kubectl rollout undo deployment/demoapp
