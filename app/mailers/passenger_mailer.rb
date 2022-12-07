class PassengerMailer < ApplicationMailer

    def booking_confirmation
        @passenger = params[:passenger]
        @booking = params[:booking]
        @flight = params[:flight]

        mail(to: @passenger.email, subject: "Confirmation Email")
    end

end
