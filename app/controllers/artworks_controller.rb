class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end
end
