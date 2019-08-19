class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.new
  end
end
