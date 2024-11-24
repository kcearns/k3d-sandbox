# List all recipes
default:
    @just --list

# Create k3d cluster
cluster:
    k3d cluster create sandbox --agents 2 --port '8080:80@loadbalancer'

# Delete cluster
delete:
    k3d cluster delete sandbox

# Deploy nginx
deploy:
    kubectl create deployment nginx --image=nginx
    kubectl expose deployment nginx --port=80 --type=LoadBalancer

# Sample Helm chart
helm:
    helm install mychart ./helm/mychart

# Install netshoot
netshoot:
    kubectl run tmp-shell --rm -i --tty --image nicolaka/netshoot

# Get cluster info
info:
    kubectl get nodes
    kubectl get pods
    kubectl get svc
    kubectl get ingress

# Clean up resources
clean:
    kubectl delete deployment nginx
    kubectl delete service nginx
    helm uninstall mychart