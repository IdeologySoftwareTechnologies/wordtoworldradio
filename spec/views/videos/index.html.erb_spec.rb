require 'rails_helper'

RSpec.describe "videos/index", :type => :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        :name => "Name",
        :video => "Video"
      ),
      Video.create!(
        :name => "Name",
        :video => "Video"
      )
    ])
  end

  it "renders a list of videos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
  end
end
