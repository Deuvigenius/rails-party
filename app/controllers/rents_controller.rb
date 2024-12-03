class RentsController < ApplicationController
  def create
    @rent = Rent.new
    @gonflable = Gonflable.find(params[:gonflable_id])
    @rent.gonflable_id = @gonflable.id
    @rent.user = current_user
    if @rent.save!
      redirect_to user_profile_path
      flash[:notice] = "Gonflable bien ajouté à mes réservations"
    else
      render :new, alert: "Erreur, impossible d'ajouter le gonflable à mes reservations, Réessayez !"
    end
  end
end