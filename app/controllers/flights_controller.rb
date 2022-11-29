class FlightsController < ApplicationController

    include FlightsHelper

    def new
        @flight = Flight.new
       
    end

    def create
        @flight = Flight.new(flight_params)
        @flight.save
        redirect_to root_path
    end

    def index
        

        if params.has_key?(:day) && params.has_key?(:month) && params.has_key?(:year)
        selected_date = Date.civil(params[:year].to_i,params[:month].to_i,params[:day].to_i)
        @available_flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], scheduled_on: selected_date.all_day)
        end
    end



    

end
