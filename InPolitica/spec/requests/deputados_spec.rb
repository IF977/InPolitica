require 'rails_helper'

RSpec.describe "Deputados", type: :request do
  describe "GET /deputados" do
    it "works! (now write some real specs)" do
      get deputados_path
      expect(response).to have_http_status(200)
    end
  end
end
