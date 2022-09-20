class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |a| [a.airport_code, a.id] } 
    @year_options = Flight.all.map { |f| f.start_datetime.year }.uniq
    @month_options = Flight.all.map { |f| f.start_datetime.month }.uniq
    @day_options = Flight.all.map { |f| f.start_datetime.day }.uniq
    @flights = Flight.all
    
    if params[:departure_year] != nil
      @selected_date = Date.new(params[:departure_year].to_i, 
        params[:departure_month].to_i, 
        params[:departure_day].to_i)
    
      @flight_options = Flight.where(
        departure_airport_id: params[:departure_airport_id],
        arrival_airport_id: params[:arrival_airport_id],
        start_datetime: @selected_date.all_day).all
    end
  end

  private

  def flight_params
    params.permit(:departure_airport_id, :arrival_airport_id, :ticket_number, :departure_month, :departure_day, :departure_year)
  end
end


