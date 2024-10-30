# app/controllers/gossips_controller.rb
class GossipsController < ApplicationController
    # Méthode pour afficher le formulaire de création d'un potin
    def new
      # Instancie un nouvel objet Gossip pour le formulaire
      @gossip = Gossip.new
    end
  
    # Méthode pour créer un nouveau potin
    def create
      # Associe l'utilisateur 'anonymous' (id 1) au potin pour le moment, et assigne les paramètres du formulaire
      @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 1)
  
      # Vérifie si le potin est sauvegardé en base de données
      if @gossip.save
        # Redirige vers la page d'index si la création est réussie
        redirect_to gossips_path, notice: "Le potin a été créé avec succès !"
      else
        # Sinon, réaffiche le formulaire de création
        render :new
      end
    end
  
    # Méthode pour afficher la liste de tous les potins en ordre décroissant
    def index
      # Récupère les potins et les trie par ordre décroissant de création
      @gossips = Gossip.order(created_at: :desc)
    end
  
    # Action pour afficher un potin spécifique
    def show
      # Récupère le potin grâce à son ID et le stocke dans @gossip pour l'afficher dans la vue
      @gossip = Gossip.find(params[:id])
    end
  
    # Méthode pour supprimer un potin
    def destroy
      @gossip = Gossip.find(params[:id])
  
      # Supprime le potin et redirige vers l'index avec un message de confirmation
      if @gossip.destroy
        redirect_to gossips_path, notice: "Le potin a été supprimé avec succès !"
      else
        redirect_to gossips_path, alert: "Une erreur s'est produite lors de la suppression."
      end
    end
  end
  