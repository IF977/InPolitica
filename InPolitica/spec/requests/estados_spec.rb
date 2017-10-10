require 'rails_helper'

RSpec.describe "Estados", type: :request do
  describe "GET /estados" do
    it "works! (now write some real specs)" do
      get estados_path
      expect(response).to have_http_status(200)
    end
  end
end
