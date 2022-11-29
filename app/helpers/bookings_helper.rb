module BookingsHelper

    def booking_params
        params.require(:booking).permit(:flight_id, passenger_attributes: [:name, :email])
    end
end
