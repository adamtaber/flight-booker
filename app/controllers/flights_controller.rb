class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |a| [a.airport_code, a.id] } 
    @year_options = Flight.all.map { |f| f.start_datetime.year }.uniq
    @month_options = Flight.all.map { |f| f.start_datetime.month }.uniq
    @day_options = Flight.all.map { |f| f.start_datetime.day }.uniq
    @flights = Flight.all
    #@search_results = Flight.where("departure_airport_id LIKE ?", "%#{params[:departure_airport_id]}%")
  end

  private

  def flight_params
    params.permit(:departure_airport_id, :arrival_airport_id, :ticket_number, :departure_month, :departure_day, :departure_year)
  end
end


