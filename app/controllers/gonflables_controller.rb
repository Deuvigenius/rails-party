class GonflablesController < ApplicationController
  before_action :set_gonflable, only: %i[ show edit update destroy ]

  def index
    @gonflables = Gonflable.all
  end

  def show
  end

  def new
    @gonflable = Gonflable.new
  end

  def edit
  end

  def create
    @gonflable = Gonflable.new(gonflable_params)

    if @gonflable.save
      redirect_to @gonflable, notice: "Gonflable was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @gonflable.update(gonflable_params)
      redirect_to @gonflable, notice: "Gonflable was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @gonflable.destroy
    redirect_to @gonflabe, notice: "Gonflable was successfully destroyed."
  end

  private

  def set_gonflable
    @gonflable = Gonflable.find(params[:id])
  end

  def gonflabe_params
    params.require(:gonflable).permit(:name, :price, :content, :image_url, :rating)
  end

end
