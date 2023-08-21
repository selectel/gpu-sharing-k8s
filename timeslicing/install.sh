kubectl apply -f timeslicing.yml
helm upgrade --install --wait \
    -n kube-system <release-name> \
    nvidia/gpu-operator \
    -set devicePlugin.config.name=time-slicing-config-fine
kubectl label node <node_name> nvidia.com/device-plugin.config=tesla-t4 --overwrite

kubectl apply -f mig.yml
helm upgrade --install --wait \
    -n kube-system gpu-operator-1691669985 \
    nvidia/gpu-operator \
    --set mig.strategy=mixed --set devicePlugin.config.name=time-slicing-config-mig
kubectl label node <node_name> nvidia.com/device-plugin.config=a100-40gb --overwrite
kubectl label node <node_name> nvidia.com/mig.config=all-balanced --overwrite