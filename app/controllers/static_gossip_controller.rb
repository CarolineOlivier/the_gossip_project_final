class StaticGossipController < ApplicationController
 
  def gossip
    @gossip = Gossip.find(params[:id])
    @comments = @gossip.comments.order(created_at: :desc) || [] # Récupère les commentaires en ordre décroissant, ou initialise à un tableau vide si aucun commentaire
    @comment = Comment.new # Prépare un nouvel objet commentaire pour le formulaire
  end


    def create_comment
        @gossip = Gossip.find(params[:id])
        @comment = @gossip.comments.build(comment_params) # Associe le commentaire au potin
        @comment.user = User.find(1) # Remplace par l'ID de l'utilisateur actif, si disponible

      if @comment.save
        redirect_to static_gossip_path(@gossip), notice: 'Commentaire ajouté avec succès !'
      else
        flash[:alert] = 'Une erreur est survenue lors de l\'ajout du commentaire.'
        render :gossip
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
end





