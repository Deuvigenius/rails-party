class RentsController < ApplicationController
  before_action :set_rent, only: [:accept, :reject]

  def create
    @rent = Rent.new(rent_params)
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
    redirect_to user_profile_path, notice: "Reservation was successfully destroyed."
  end

  def accept
    @rent = Rent.find(params[:id])
    @rent.update(statut: "Accepté")
    redirect_to user_profile_path, notice: "Réservation acceptée."
  end

  def reject
    @rent = Rent.find(params[:id])
    @rent.update(statut: "Rejeté")
    redirect_to user_profile_path, alert: "Réservation rejetée."
  end

  private

  def rent_params
    params.require(:rent).permit(:gonflable_id, :date_debut, :date_fin, :statut)
  end

  def set_rent
    @rent = Rent.find(params[:id])
  end

end
