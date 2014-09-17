require 'rails_helper'

RSpec.describe "chapters/edit", :type => :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :chapter_number => 1,
      :chapter_image => "MyString",
      :chapter_audio => "MyString",
      :bible => nil,
      :admin => nil,
      :status => false
    ))
  end

  it "renders the edit chapter form" do
    render

    assert_select "form[action=?][method=?]", chapter_path(@chapter), "post" do

      assert_select "input#chapter_chapter_number[name=?]", "chapter[chapter_number]"

      assert_select "input#chapter_chapter_image[name=?]", "chapter[chapter_image]"

      assert_select "input#chapter_chapter_audio[name=?]", "chapter[chapter_audio]"

      assert_select "input#chapter_bible_id[name=?]", "chapter[bible_id]"

      assert_select "input#chapter_admin_id[name=?]", "chapter[admin_id]"

      assert_select "input#chapter_status[name=?]", "chapter[status]"
    end
  end
end
