require "rails_helper"

RSpec.describe DeputadosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/deputados").to route_to("deputados#index")
    end

    it "routes to #new" do
      expect(:get => "/deputados/new").to route_to("deputados#new")
    end

    it "routes to #show" do
      expect(:get => "/deputados/1").to route_to("deputados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/deputados/1/edit").to route_to("deputados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/deputados").to route_to("deputados#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/deputados/1").to route_to("deputados#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/deputados/1").to route_to("deputados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/deputados/1").to route_to("deputados#destroy", :id => "1")
    end

  end
end
