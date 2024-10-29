source "https://rubygems.org" 
ruby '3.2.2'

# Utiliser Rails version 7.2.1 ou supérieure
gem "rails", "~> 7.2.1", ">= 7.2.1.1"

# Le pipeline d'assets original pour Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails" # Gère les fichiers CSS et JavaScript de l'application.

# Utiliser PostgreSQL comme base de données pour Active Record
gem "pg", "~> 1.1" # Adaptateur PostgreSQL pour la base de données.

# Utiliser le serveur web Puma [https://github.com/puma/puma]
gem "puma", ">= 5.0" # Serveur web performant pour exécuter l'application Rails.

# Regrouper et transpiler JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails" # Outils pour gérer le JavaScript dans l'application.

# Accélérateur de page de type SPA de Hotwire [https://turbo.hotwired.dev]
gem "turbo-rails" # Outil pour améliorer la navigation dans l'application en chargeant des pages dynamiquement.

# Cadre JavaScript modeste de Hotwire [https://stimulus.hotwired.dev]
gem "stimulus-rails" # Complète Turbo avec une gestion d'interactions JavaScript.

# Construire facilement des API JSON [https://github.com/rails/jbuilder]
gem "jbuilder" # Génère des réponses JSON pour les API.

# Utiliser l'adaptateur Redis pour exécuter Action Cable en production
# gem "redis", ">= 4.0.1" # (commenté) Utilisé pour les connexions WebSocket.

# Utiliser Kredis pour obtenir des types de données de plus haut niveau dans Redis [https://github.com/rails/kredis]
# gem "kredis" # (commenté) Outil pour simplifier l'utilisation de Redis avec des structures de données.

# Utiliser Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7" # (commenté) Pour gérer les mots de passe de manière sécurisée.

# Windows n'inclut pas de fichiers zoneinfo, donc inclure le gem tzinfo-data
gem "tzinfo-data", platforms: %i[ windows jruby ] # Données de fuseau horaire pour Windows et JRuby.

# Réduit les temps de démarrage grâce à la mise en cache ; requis dans config/boot.rb
gem "bootsnap", require: false # Accélère le démarrage de l'application en mettant en cache des fichiers.

# Utiliser les variantes d'Active Storage [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2" # (commenté) Pour manipuler les images dans Active Storage.

# Groupes pour les environnements de développement et de test
group :development, :test do
  # Voir https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude" # Outil de débogage pour le développement.

  # Analyse statique pour les vulnérabilités de sécurité [https://brakemanscanner.org/]
  gem "brakeman", require: false # Vérifie le code pour détecter des problèmes de sécurité.

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false # Outil d'analyse de code pour appliquer des règles de style Ruby.
end

# Groupe pour l'environnement de développement
group :development do
  # Utiliser la console sur les pages d'exception [https://github.com/rails/web-console]
  gem "web-console" # Permet d'utiliser une console Rails dans le navigateur pour déboguer.
end

# Groupe pour l'environnement de test
group :test do
  # Utiliser le test système [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara" # Outil pour tester les applications web de manière intégrée.
  gem "selenium-webdriver" # Utilisé pour l'automatisation des tests de navigateur.
end
