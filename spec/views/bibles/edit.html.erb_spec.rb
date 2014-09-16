require 'rails_helper'

RSpec.describe "bibles/edit", :type => :view do
  before(:each) do
    @bible = assign(:bible, Bible.create!(
      :name => "MyString",
      :bible_cover => "MyString",
      :admin => nil,
      :status => false
    ))
  end

  it "renders the edit bible form" do
    render

    assert_select "form[action=?][method=?]", bible_path(@bible), "post" do

      assert_select "input#bible_name[name=?]", "bible[name]"

      assert_select "input#bible_bible_cover[name=?]", "bible[bible_cover]"

      assert_select "input#bible_admin_id[name=?]", "bible[admin_id]"

      assert_select "input#bible_status[name=?]", "bible[status]"
    end
  end
end
