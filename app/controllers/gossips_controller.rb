# app/controllers/gossips_controller.rb
class GossipsController < ApplicationController
  # Méthode pour afficher le formulaire de création d'un potin
  def new
    # Instancie un nouvel objet Gossip pour le formulaire
    @gossip = Gossip.new
  end

  # Méthode pour créer un nouveau potin
  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 1) # Assure-toi que l'ID utilisateur est correct

    if @gossip.save
      # Redirige vers la page d'accueil après la création
      redirect_to gossips_path, notice: "Le potin a été créé avec succès !"
    else
      # Si la création échoue, recharge la page de création
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
end
