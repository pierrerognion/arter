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
    full_date = @booking.date_range.split(' au ')
    @booking.start_date = full_date[0]
    @booking.end_date = full_date[1]
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
    @artwork = Artwork.find(params[:artwork_id])
    @artwork.availability = false
    @artwork.save
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
    params.require(:booking).permit(:start_date, :end_date, :date_range)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
