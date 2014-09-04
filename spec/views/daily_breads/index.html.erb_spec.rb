require 'rails_helper'

RSpec.describe "daily_breads/index", :type => :view do
  before(:each) do
    assign(:daily_breads, [
      DailyBread.create!(
        :message => "Message"
      ),
      DailyBread.create!(
        :message => "Message"
      )
    ])
  end

  it "renders a list of daily_breads" do
    render
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
