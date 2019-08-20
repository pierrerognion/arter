class ArtworksController < ApplicationController
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

  # def edit
  #   unless @artwork.user == current_user
  #     flash
  #     redirect_to..
  # end

  def show
    @artwork = Artwork.find(params[:id])
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
end
