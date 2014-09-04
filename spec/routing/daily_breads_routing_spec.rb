require "rails_helper"

RSpec.describe DailyBreadsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/daily_breads").to route_to("daily_breads#index")
    end

    it "routes to #new" do
      expect(:get => "/daily_breads/new").to route_to("daily_breads#new")
    end

    it "routes to #show" do
      expect(:get => "/daily_breads/1").to route_to("daily_breads#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/daily_breads/1/edit").to route_to("daily_breads#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/daily_breads").to route_to("daily_breads#create")
    end

    it "routes to #update" do
      expect(:put => "/daily_breads/1").to route_to("daily_breads#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/daily_breads/1").to route_to("daily_breads#destroy", :id => "1")
    end

  end
end
