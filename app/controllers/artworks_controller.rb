class ArtworksController < ApplicationController
  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
  end

  private

  def artwork_params
    params.require(:artwork)
  end
end
