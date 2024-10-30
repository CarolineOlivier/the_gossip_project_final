Rails.application.routes.draw do
  # Cette ligne ouvre le bloc des routes de votre application Rails, où chaque route correspond à un URL spécifique.
  # Le bloc utilise une syntaxe DSL (Domain-Specific Language) pour définir les chemins accessibles dans l'application.
  
  get "static_profil/profil/:user", to: 'static_profil#profil'
  # Cette route permet d'accéder à une page de profil dynamique avec l'URL "static_profil/profil/:user".
  # ":user" représente un paramètre dynamique qui sera transmis au contrôleur.
  # La requête sera gérée par l'action "profil" dans le contrôleur "StaticProfilController".

  get "static_welcome/welcome/:hide", to: 'static_welcome#welcome'
  # Cette route permet d'afficher une page de bienvenue avec un paramètre ":hide".
  # Le paramètre ":hide" est dynamique et peut être utilisé pour gérer l'affichage de certains éléments sur la page.
  # La requête est dirigée vers l'action "welcome" dans le contrôleur "StaticWelcomeController".

  #  route personnalisée pour static_gossip :
get 'static_gossip/gossip/:id', to: 'static_gossip#gossip', as: 'static_gossip'
# l'option as: 'static_gossip', définit un alias pour cette route.
#En utilisant as: 'static_gossip', on peut  faire référence à cette route plus facilement dans le code, 
#en utilisant static_gossip_path dans les vues ou contrôleurs pour générer l'URL.

  get "static_contact/contact"
  # Cette route affiche une page de contact statique en utilisant l'action "contact" dans "StaticContactController".
  # Il n'y a pas de paramètre dynamique, donc elle affiche une page fixe de contact.

  get "static_team/team"
  # Cette route permet d'accéder à une page de présentation de l'équipe.
  # Elle dirige vers l'action "team" dans "StaticTeamController".

  get "static_pages/home"
  # Cette route définit la page d'accueil de l'application.
  # Elle appelle l'action "home" dans le contrôleur "StaticPagesController".

  # Définir les routes de santé de l'application, pour vérifier si elle est active
  get "up" => "rails/health#show", as: :rails_health_check
  # Cette route définit une page de vérification de l'état de santé de l'application.
  # Elle retourne un statut HTTP 200 si l'application fonctionne sans erreur, sinon 500 en cas d'échec.
  # L'alias `:rails_health_check` peut être utilisé dans les vues ou contrôleurs pour simplifier l'accès à cette route.

  # Rendre les fichiers dynamiques de Progressive Web App (PWA) depuis app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  # Cette route permet de servir le fichier "service-worker.js", utilisé pour les PWA.
  # L'action "service_worker" dans "Rails::PwaController" gère cette route, avec l'alias `:pwa_service_worker`.

  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # Cette route sert le fichier "manifest.json", qui décrit les métadonnées de l'application pour les PWA.
  # Elle est gérée par l'action "manifest" de "Rails::PwaController" et a un alias `:pwa_manifest`.

  # Defines the root path route ("/")
  # root "posts#index"
  # Cette ligne est commentée, mais elle définirait la page d'accueil de l'application avec la méthode "root".
  # Ici, elle serait liée à l'index du contrôleur "PostsController".

  #ajout de commentaires : 
  post 'static_gossip/gossip/:id/comments', to: 'static_gossip#create_comment', as: 'static_gossip_comments'
  

  resources :gossips do
    resources :comments, only: [:create, :destroy]
  end
  
resources :gossips
  # Cette ligne crée automatiquement toutes les routes RESTful (index, show, new, edit, create, update, destroy) pour le modèle "Gossip".
  # Elle dirige ces actions vers "GossipsController", ce qui simplifie la gestion des requêtes CRUD pour ce modèle.
  #Ce code imbrique les routes de comments sous gossips, ce qui signifie qu'un commentaire est lié à un gossip spécifique.
end



