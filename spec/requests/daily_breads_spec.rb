require 'rails_helper'

RSpec.describe "DailyBreads", :type => :request do
  describe "GET /daily_breads" do
    it "works! (now write some real specs)" do
      get daily_breads_path
      expect(response.status).to be(200)
    end
  end
end
