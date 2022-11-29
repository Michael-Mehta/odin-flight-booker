class BookingsController < ApplicationController

    def new
        @booking = Booking.new
        @selected_flight = Flight.find(params[:flight])
        @passengers_count = params[:passengers].to_i
        @passengers_count.times{@booking.passengers.build}
    end
end
