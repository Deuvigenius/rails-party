class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
    @user = current_user
    @rents = Rent.where(user: @user)
    @gonflables = @user.gonflables

  end
end
