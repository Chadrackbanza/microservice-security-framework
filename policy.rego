package security

# Bloquer si vulnérabilité critique
deny[msg] if {
  input.vulnerabilities[_].severity == "CRITICAL"
  msg := "Déploiement bloqué : vulnérabilité critique détectée."
}

# Bloquer si pas de HTTPS
deny[msg] if {
  not input.config.https_enabled
  msg := "Déploiement bloqué : HTTPS obligatoire."
}

# Bloquer si un conteneur tourne en root
deny[msg] if {
    input.container.user == "root"
    msg := "Le conteneur ne doit pas tourner en root"
}
