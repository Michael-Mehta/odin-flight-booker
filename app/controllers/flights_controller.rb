class FlightsController < ApplicationController

    def new
        @flight = Flight.new
        selected_date = Date.civil(params[:year].to_i,params[:month].to_i,params[:day].to_i)
        @available_flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params
        [:arrival_airport_id], scheduled_on: selected_date.all_day)
    end

    def create
        @flight = Flight.new(flight_params)
        @flight.save
        redirect_to root_path
    end

    def index
        @flights = Flight.all

    end

end
