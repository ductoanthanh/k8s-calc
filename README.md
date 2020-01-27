```bash
# Create secret
kubectl create secret generic pgpassword --from-literal PGPASSWORD=whateveryouwant
```

```bash
# Run Skaffold
skaffold dev --trigger=polling
```
