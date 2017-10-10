require "rails_helper"

RSpec.describe GastosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gastos").to route_to("gastos#index")
    end

    it "routes to #new" do
      expect(:get => "/gastos/new").to route_to("gastos#new")
    end

    it "routes to #show" do
      expect(:get => "/gastos/1").to route_to("gastos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gastos/1/edit").to route_to("gastos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gastos").to route_to("gastos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gastos/1").to route_to("gastos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gastos/1").to route_to("gastos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gastos/1").to route_to("gastos#destroy", :id => "1")
    end

  end
end
