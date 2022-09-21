class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @passenger_quantity = params[:ticket_quantity].to_i
    @passenger_quantity.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:first_name, :last_name, :email])
  end

end
