require 'rails_helper'

RSpec.describe "daily_breads/new", :type => :view do
  before(:each) do
    assign(:daily_bread, DailyBread.new(
      :message => "MyString"
    ))
  end

  it "renders new daily_bread form" do
    render

    assert_select "form[action=?][method=?]", daily_breads_path, "post" do

      assert_select "input#daily_bread_message[name=?]", "daily_bread[message]"
    end
  end
end
