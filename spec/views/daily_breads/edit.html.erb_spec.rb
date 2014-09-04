require 'rails_helper'

RSpec.describe "daily_breads/edit", :type => :view do
  before(:each) do
    @daily_bread = assign(:daily_bread, DailyBread.create!(
      :message => "MyString"
    ))
  end

  it "renders the edit daily_bread form" do
    render

    assert_select "form[action=?][method=?]", daily_bread_path(@daily_bread), "post" do

      assert_select "input#daily_bread_message[name=?]", "daily_bread[message]"
    end
  end
end
