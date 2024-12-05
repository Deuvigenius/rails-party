class ReviewsController < ApplicationController
  before_action :set_gonflable, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.gonflable = @gonflable

    if @review.save
      # Je déclare une somme à 0
      sum = 0
      # Je récupère les rating de mes reviews des gonflables
      reviews = @review.gonflable.reviews.map {|review| review.rating }
      # [2, 2, 5 ...]
      # Je récupère chacun des chiffres de l'array pour l'ajouter à la somme
      reviews_average = reviews.each {|review| sum += review }
      # Je fais ma moyenne via la somme divisée par le nombre total de reviews
      sum_gonflable_average = sum / reviews.count
      # J'update mon gonflable.rating avec ma variable déclarée au dessus
      @review.gonflable.update!(rating: sum_gonflable_average)
      redirect_to gonflable_path(@gonflable), notice: 'Merci pour votre avis !'
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def set_gonflable
    @gonflable = Gonflable.find(params[:gonflable_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
