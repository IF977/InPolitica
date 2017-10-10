require 'rails_helper'

RSpec.describe "Gastos", type: :request do
  describe "GET /gastos" do
    it "works! (now write some real specs)" do
      get gastos_path
      expect(response).to have_http_status(200)
    end
  end
end
