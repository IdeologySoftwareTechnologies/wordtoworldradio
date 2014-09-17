require 'rails_helper'

RSpec.describe "bibles/new", :type => :view do
  before(:each) do
    assign(:bible, Bible.new(
      :name => "MyString",
      :bible_cover => "MyString",
      :admin => nil,
      :status => false
    ))
  end

  it "renders new bible form" do
    render

    assert_select "form[action=?][method=?]", bibles_path, "post" do

      assert_select "input#bible_name[name=?]", "bible[name]"

      assert_select "input#bible_bible_cover[name=?]", "bible[bible_cover]"

      assert_select "input#bible_admin_id[name=?]", "bible[admin_id]"

      assert_select "input#bible_status[name=?]", "bible[status]"
    end
  end
end
