class BookingsController < ApplicationController

include BookingsHelper

    def new
        @booking = Booking.new
        @selected_flight = Flight.find(params[:flight])
        @passengers_count = params[:passengers].to_i
        @passengers_count.times{@booking.passengers.build}
    end

    def create

        @booking = Booking.new(booking_params)

        if @booking.save

            mail_passengers
            flash[:success] = 'Booking saved!'
            redirect_to booking_path(@booking)
        else
            flash[:alert] = "An error has occured!"
            render "new"
        end
    end

    def show

        @booking = Booking.find(params[:id])
    end

    private

    def mail_passengers

    @booking.passengers.each do |passenger|
          PassengerMailer.with(passenger:, booking: @booking).booking_confirmation.deliver_now!
    end

    end

end
