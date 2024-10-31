class StaticGossipController < ApplicationController
  def gossip
    @gossip = Gossip.find(params[:id])
    @comments = @gossip.comments.order(created_at: :desc)
    @comment = Comment.new
  end
  
  def create_comment
    @gossip = Gossip.find(params[:id])
    @comment = @gossip.comments.build(comment_params)
    @comment.user = User.find(1) # Remplacez avec l'ID de l'utilisateur actif

    if @comment.save
      redirect_to static_gossip_path(@gossip), notice: 'Commentaire ajouté avec succès !'
    else
      flash[:alert] = 'Une erreur est survenue lors de l\'ajout du commentaire.'
      render :gossip
    end
  end
  
  def destroy
    @gossip = Gossip.find(params[:id])
    if @gossip.destroy
      redirect_to gossips_path, notice: "Le potin a été supprimé avec succès."
    else
      redirect_to static_gossip_path(@gossip), alert: "Erreur lors de la suppression du potin."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
