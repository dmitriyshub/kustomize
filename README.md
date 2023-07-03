# kustomize demo
```
kustomize build ../prod | kubectl apply -f -

```

```
helm install -f kyverno/values.yaml kyverno kyverno/kyverno -n kyverno --create-namespace \ 
--set admissionController.replicas=3 \
--set backgroundController.replicas=2 \
--set cleanupController.replicas=2 \
--set reportsController.replicas=2
```