class StaticContactController < ApplicationController
  def contact
  end

  def gossip
    @gossip = Gossip.find(params[:id])
    @comments = @gossip.comments
    @comment = Comment.new
  end

  def create_comment
    @gossip = Gossip.find(params[:id])
    @comment = @gossip.comments.build(comment_params)
    @comment.user = User.find(1) # Remplacez `1` par l'ID de l'utilisateur connecté si besoin

    if @comment.save
      redirect_to static_gossip_path(@gossip), notice: "Commentaire ajouté avec succès !"
    else
      redirect_to static_gossip_path(@gossip), alert: "Erreur lors de l'ajout du commentaire."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

# Méthode pour supprimer un potin
def destroy
  @gossip = Gossip.find(params[:id])

  # Supprime le potin et redirige vers l'index avec un message de confirmation
  if @gossip.destroy
    redirect_to gossips_path, notice: "Le potin a été supprimé avec succès !" # Modification pour rediriger vers l'accueil après suppression
  else
    redirect_to gossips_path, alert: "Une erreur s'est produite lors de la suppression." # Modification pour rediriger vers l'accueil en cas d'erreur
  end
end

end