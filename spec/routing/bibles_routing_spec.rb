require "rails_helper"

RSpec.describe BiblesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bibles").to route_to("bibles#index")
    end

    it "routes to #new" do
      expect(:get => "/bibles/new").to route_to("bibles#new")
    end

    it "routes to #show" do
      expect(:get => "/bibles/1").to route_to("bibles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bibles/1/edit").to route_to("bibles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bibles").to route_to("bibles#create")
    end

    it "routes to #update" do
      expect(:put => "/bibles/1").to route_to("bibles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bibles/1").to route_to("bibles#destroy", :id => "1")
    end

  end
end
