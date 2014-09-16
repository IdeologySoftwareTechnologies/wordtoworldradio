require 'rails_helper'

RSpec.describe "bibles/index", :type => :view do
  before(:each) do
    assign(:bibles, [
      Bible.create!(
        :name => "Name",
        :bible_cover => "Bible Cover",
        :admin => nil,
        :status => false
      ),
      Bible.create!(
        :name => "Name",
        :bible_cover => "Bible Cover",
        :admin => nil,
        :status => false
      )
    ])
  end

  it "renders a list of bibles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Bible Cover".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
