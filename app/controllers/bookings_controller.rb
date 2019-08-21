class BookingsController < ApplicationController
  before_action :set_artwork, only: [:show, :edit, :update]
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new
    @booking.user = current_user
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking.artwork)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @bookings = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:name, 
                                    :photo, 
                                    :start_date, 
                                    :end_date
                                  )
  end

  def set_booking
    @booking = Boooking.find(params[:id])
  end
end
