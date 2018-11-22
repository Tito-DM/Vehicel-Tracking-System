class ApiController < ActionController::API
   skip_before_action :authenticate_user!, only: [:create]
end