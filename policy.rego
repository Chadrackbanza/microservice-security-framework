package security

deny[msg] {
  input.vulnerabilities[_].severity == "CRITICAL"
  msg := "Déploiement bloqué : vulnérabilité critique détectée."
}
