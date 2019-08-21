class DashboardController < ApplicationController
  def profile
    @user = current_user
    @artworks = current_user.artworks
    @bookings = current_user.bookings
  end
end
