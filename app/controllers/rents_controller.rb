class RentsController < ApplicationController
  def create
    @rent = Rent.new
    @gonflable = Gonflable.find(params[:gonflable_id])
    @rent.gonflable_id = @gonflable.id
    @rent.user = current_user
    if @rent.save
      redirect_to user_profile_path
      flash[:notice] = "Gonflable bien ajouté à mes réservations"
    else
      render :new, alert: "Erreur, impossible d'ajouter le gonflable à mes reservations, Réessayez !"
    end
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy
    redirect_to gonflables_path, notice: "Resrvation was successfully destroyed."
  end
end
