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
