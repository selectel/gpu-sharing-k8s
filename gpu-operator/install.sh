helm install --wait --generate-name \
    -n kube-system --create-namespace \
    nvidia/gpu-operator \
    --set mig.strategy=single