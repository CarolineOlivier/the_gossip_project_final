# The Gossip Project

**The Gossip Project** est une application web permettant de créer, de consulter et de commenter des potins dans un environnement interactif. Développée en Ruby on Rails, l'application utilise du HTML et du CSS personnalisés pour le design et PostgreSQL pour la base de données.

## Table des matières

1. [Description](#description)
2. [Prérequis](#prérequis)
3. [Installation](#installation)
4. [Utilisation](#utilisation)
5. [Fonctionnalités](#fonctionnalités)
6. [Contributions](#contributions)
7. [Auteurs](#auteurs)

## Description

The Gossip Project permet aux utilisateurs de consulter et de partager des potins. Les fonctionnalités incluent la création et l'affichage de potins, la présentation de l'équipe de développement, une page de contact, une page d'accueil personnalisée, et un affichage dynamique des utilisateurs. Ce projet fait partie d'une formation en développement web et couvre des concepts de bases de données, de contrôleurs, de vues, de mise en page CSS, et d'interactions avec les utilisateurs.

## Prérequis

- Ruby 3.2.2
- Rails 7.2.1.2
- PostgreSQL  17.0 
- Bundler (`gem install bundler` si besoin)

## Installation

1. **Clone le dépôt** :
   ```bash
   git clone git@github.com:  https://github.com/CarolineOlivier/the_gossip_project_final
   cd the_gossip_project
   ```

2. **Installe les gems nécessaires**:

```bash
bundle install
```

3. **Configure la base de données**: 
```bash
rails db:create
rails db:migrate
rails db:seed
```
4. **Lance le serveur** : 
```bash
rails server
```
Accède ensuite à l'application en ouvrant http://127.0.0.1:3000/static_pages/home dans ton navigateur.

## Utilisation

- Visite la page d'accueil pour consulter la liste des potins.
- Accède aux pages statiques : `team` pour l'équipe et `contact` pour nous contacter.
- Utilise l'URL `/welcome/:first_name` pour afficher une page de bienvenue personnalisée avec ton prénom.
- Clique sur un potin pour voir ses détails et accéder aux informations de l'auteur.

## Fonctionnalités

- **Page d'accueil** : Affiche tous les potins disponibles.
- **Pages statiques** : `team` et `contact`.
- **Pages dynamiques** :
  - Page de bienvenue personnalisée (`welcome/first_name`).
  - Détails des potins avec affichage de l'auteur.
- **Design** : Interface en HTML et CSS personnalisés pour un rendu unique.
- **Base de données** : PostgreSQL pour la gestion des potins, utilisateurs et associations.

## Contributions

Les contributions sont les bienvenues. Merci de soumettre un *pull request* pour toute modification.

## Auteurs

- Florian Tribout
- Florian Elie
- Charlie Sigogneau
- Caroline Olivier

## Licence

Ce projet est sous licence MIT. Cela signifie que les utilisateurs sont libres d'utiliser, copier, modifier, fusionner, publier, distribuer, octroyer une sous-licence et/ou vendre des copies du projet, sous réserve que chaque copie conserve les informations de licence d'origine. Le projet est fourni "tel quel", sans garantie d'aucune sorte.
