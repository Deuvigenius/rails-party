class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
    @user = current_user

    @pending_rents = Rent.where(user: @user, statut: "")
    @accepted_rents = Rent.where(user: @user, statut: "Accepté")
    @rejected_rents = Rent.where(user: @user, statut: "Rejeté")
  end
end
