module Api
  class LocationsController < ApiController
     skip_before_action :authenticate_user!, only: [:create]
    def index
      locations = Location.all
      render json: locations, status: :ok
    end

    def create

      location = Location.create!(location_params)
      render json: location, status: :ok if location.save
    end

    private

    def location_params
      params.permit(:latitude, :longitude, :user_id, :vehicel_id)
    end
  end
end
