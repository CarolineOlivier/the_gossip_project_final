class CommentsController < ApplicationController
    def create
      # Trouver le gossip auquel le commentaire est associé
      @gossip = Gossip.find(params[:gossip_id])
      # On récupère le gossip auquel le commentaire est associé grâce à l'ID passé en paramètre.
      
      # Créer un nouveau commentaire avec le contenu du formulaire et rattacher l'utilisateur actuel (si authentification)
      @comment = @gossip.comments.new(comment_params) # On crée un nouveau commentaire lié au gossip récupéré.
      @comment.user = User.find(1)
      # Ici, on assigne un utilisateur (utilisateur avec user_id = 1 par exemple).
      # On doit remplacer cette ligne par l'utilisateur authentifié si il y en a un.
  
      if @comment.save
        # Si le commentaire est enregistré, on redirige vers la page de détail du gossip avec un message de succès.
        redirect_to static_gossip_path(@gossip), notice: "Commentaire ajouté avec succès !"
      else
        # En cas d'erreur, rester sur la même page et afficher les erreurs
        flash.now[:alert] = "Erreur lors de l'ajout du commentaire."
        render 'static_gossip/gossip'
      end
    end
  
    def destroy
      # Trouver le commentaire grâce à son ID
      comment = Comment.find(params[:id])
  
      # Trouver le potin auquel le commentaire appartient
      gossip = comment.gossip
  
      # Supprimer le commentaire
      comment.destroy
  
      # Rediriger vers la page de détails du potin avec un message de confirmation
      redirect_to static_gossip_path(gossip), notice: "Le commentaire a été supprimé avec succès."
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
  