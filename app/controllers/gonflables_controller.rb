class GonflablesController < ApplicationController
  before_action :set_gonflable, only: %i[ show edit update destroy ]

  def index
    @gonflables = Gonflable.all
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
    @gonflables = Gonflable.find(params[:id])
    @rent = Rent.new
    @reviews = @gonflable.reviews
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
    respond_to do |format|
      if @gonflable.save
        format.html { redirect_to @gonflable, notice: "Votre Gonflable est bien créé" }
        format.json
      else
        format.html { redirect_to user_profile_path, notice: "Votre Gonflable n'a pas été créé" }
        format.json
      end
    end
  end

  def update
    if @gonflable.update(gonflable_params)
      redirect_to @gonflable, notice: "Votre Gonflable a été modifié."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @gonflable.destroy
    redirect_to user_profile_path, notice: "Votre Gonflable a été supprimé avec succès."
  end

  private

  def set_gonflable
    @gonflable = Gonflable.find(params[:id])
  end

  def gonflable_params
    params.require(:gonflable).permit(:name, :price, :content, :image_url, :rating, :photo)
  end

end
