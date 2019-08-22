class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :accepted!, :declined!]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new(booking_params)
    @booking.artwork = @artwork
    @booking.user = current_user
    if @booking.save
      redirect_to profile_path
    else
      flash[:alert] = "Veuillez choisir une période de location valide."
      render 'artworks/show'
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to profile_path
  end

  def accepted!
    @booking.status = "accepted"
    @booking.save
    redirect_to profile_path
  end

  def declined!
    @booking.status = "declined"
    @booking.save
    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
