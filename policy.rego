package security

# Bloquer si vulnérabilité critique
deny[msg] {
  input.vulnerabilities[_].severity == "CRITICAL"
  msg := "Déploiement bloqué : vulnérabilité critique détectée."
}

# Bloquer si pas de HTTPS
deny[msg] {
  not input.config.https_enabled
  msg := "Déploiement bloqué : HTTPS obligatoire."
}
