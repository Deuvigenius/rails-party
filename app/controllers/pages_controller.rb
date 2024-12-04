class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
    @user = current_user
    @gonflables = current_user.gonflable
    @gonflable = Gonflable.new

    # Mes réservations : Gonflables réservés par l'utilisateur
    @my_rents = @user.rents.includes(:gonflable)

    # Mes demandes de réservations : Réservations des gonflables appartenant à l'utilisateur
    @requests = Rent.joins(:gonflable).where(gonflables: { user_id: @user.id }).includes(:user, :gonflable
  end
end
