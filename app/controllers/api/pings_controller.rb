module Api
  class PingsController < ApiController
    
    def index
      render json: { response: 'pong' }
    end
  end
end
