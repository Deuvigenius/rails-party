class GonflablesController < ApplicationController
  before_action :set_gonflable, only: %i[ show edit update destroy ]

  def index
    @gonflables = Gonflable.all
    @gonflables = Gonflable.geocoded
    @markers = @gonflables.map do |gonflable|
      {
        lat: gonflable.latitude,
        lng: gonflable.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { gonflable: gonflable }),
        marker_html: render_to_string(partial: "marker", locals: { gonflable: gonflable })
      }
    end
  end

  def show
    @rent = Rent.new
  end

  def new
    @gonflable = Gonflable.new
  end

  def edit
    @gonflable = Gonflable.find(params[:id])
  end

  def create
    @gonflable = Gonflable.new(gonflable_params)
    @gonflable.user = current_user
    if @gonflable.save
      redirect_to @gonflable, notice: "Inflatable games was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @gonflable.update(gonflable_params)
      redirect_to @gonflable, notice: "Inflatable games was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @gonflable.destroy
    redirect_to @gonflable, notice: "Inflatable games was successfully destroyed."
  end

  private

  def set_gonflable
    @gonflable = Gonflable.find(params[:id])
  end

  def gonflable_params
    params.require(:gonflable).permit(:name, :price, :content, :image_url, :rating, :photo)
  end

end
