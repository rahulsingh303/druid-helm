kubectl get service | grep zookeeper | awk '{print $1}' | xargs kubectl delete service
kubectl get service | grep druid | awk '{print $1}' | xargs kubectl delete service
kubectl get deployment | grep druid | awk '{print $1}' | xargs kubectl delete deployment
kubectl get deployment | grep zookeeper| awk '{print $1}' | xargs kubectl delete deployment
kubectl delete configmap common-runtime-configmap
kubectl delete pvc --all
kubectl delete pv --all
kubectl get secret | grep druid | awk '{print $1}' | xargs kubectl delete secret
