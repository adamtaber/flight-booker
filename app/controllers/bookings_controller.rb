class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @passenger_quantity = params[:ticket_quantity].to_i
    @passenger_quantity.times { @booking.passengers.build }
    @flight_info = Flight.find(params[:selected_flight])
    @selected_date = Date.new(@flight_info.start_datetime.year, 
      @flight_info.start_datetime.month, 
      @flight_info.start_datetime.day)
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
    @flight_info = @booking.flight
    @selected_date = Date.new(@flight_info.start_datetime.year, 
      @flight_info.start_datetime.month, 
      @flight_info.start_datetime.day)
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:first_name, :last_name, :email])
  end

end
