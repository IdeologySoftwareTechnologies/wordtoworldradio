require 'rails_helper'

RSpec.describe "daily_breads/show", :type => :view do
  before(:each) do
    @daily_bread = assign(:daily_bread, DailyBread.create!(
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Message/)
  end
end
