class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
    @user = current_user
    @gonflables = current_user.gonflables
    @rents = Rent.where(user: @user)
    @gonflables = @user.gonflables
    @gonflable = Gonflable.new
  end
end
