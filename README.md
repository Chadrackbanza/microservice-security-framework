# Microservice Security Framework

Ce projet contient un microservice minimal basé sur Alpine et un pipeline de sécurité GitHub Actions.

## Contenu
- **Dockerfile** : microservice de test
- **security/** : politiques OPA et résultats de scan Trivy
- **.github/workflows/security-pipeline.yml** : pipeline CI/CD

## Lancer le microservice
```bash
docker build -t microservice-test .
docker run --rm microservice-test
