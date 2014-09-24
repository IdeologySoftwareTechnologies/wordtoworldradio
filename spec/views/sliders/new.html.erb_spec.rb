require 'rails_helper'

RSpec.describe "sliders/new", :type => :view do
  before(:each) do
    assign(:slider, Slider.new(
      :name => "MyString",
      :description => "MyText",
      :slide => "MyString",
      :status => false,
      :admin => nil
    ))
  end

  it "renders new slider form" do
    render

    assert_select "form[action=?][method=?]", sliders_path, "post" do

      assert_select "input#slider_name[name=?]", "slider[name]"

      assert_select "textarea#slider_description[name=?]", "slider[description]"

      assert_select "input#slider_slide[name=?]", "slider[slide]"

      assert_select "input#slider_status[name=?]", "slider[status]"

      assert_select "input#slider_admin_id[name=?]", "slider[admin_id]"
    end
  end
end
