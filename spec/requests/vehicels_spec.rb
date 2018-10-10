require 'rails_helper'

RSpec.describe "Vehicels", type: :request do
  describe "GET /vehicels" do
    it "works! (now write some real specs)" do
      get vehicels_path
      expect(response).to have_http_status(200)
    end
  end
end
