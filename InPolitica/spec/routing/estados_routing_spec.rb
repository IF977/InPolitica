require "rails_helper"

RSpec.describe EstadosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/estados").to route_to("estados#index")
    end

    it "routes to #new" do
      expect(:get => "/estados/new").to route_to("estados#new")
    end

    it "routes to #show" do
      expect(:get => "/estados/1").to route_to("estados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/estados/1/edit").to route_to("estados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/estados").to route_to("estados#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/estados/1").to route_to("estados#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/estados/1").to route_to("estados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/estados/1").to route_to("estados#destroy", :id => "1")
    end

  end
end
