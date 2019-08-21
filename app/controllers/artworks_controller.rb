class ArtworksController < ApplicationController
  before_action :set_artwork, only: [:show, :edit, :update]
  def index
    @artworks = Artwork.all
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    @artwork.save
    redirect_to artwork_path(@artwork)
  end

  def edit
    unless @artwork.user == current_user
      flash[:alert] = "Vous n'êtes pas autorisé à modifier cette annonce."
      redirect_to artwork_path(@artwork)
    end
  end

  def update
    @artwork.update(artwork_params)
    redirect_to artwork_path(@artwork)
  end

  def show
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to artworks_path
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name,
                                    :description,
                                    :category,
                                    :width,
                                    :depth,
                                    :height,
                                    :weight,
                                    :price,
                                    :location,
                                    :availability,
                                    :picture,
                                    :artist,
                                    :country)
  end

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end
end
