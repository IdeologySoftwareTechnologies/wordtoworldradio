require 'rails_helper'

RSpec.describe "Bibles", :type => :request do
  describe "GET /bibles" do
    it "works! (now write some real specs)" do
      get bibles_path
      expect(response.status).to be(200)
    end
  end
end
