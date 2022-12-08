class PassengerMailer < ApplicationMailer

    def booking_confirmation
        @passenger = params[:passenger]
        @booking = Booking.find(params[:booking_id])
        @flight = params[:flight]

        mail(to: @booking.passengers.pluck(:email), subject: "Confirmation Email")
    end

end
