require 'rails_helper'

RSpec.describe "chapters/index", :type => :view do
  before(:each) do
    assign(:chapters, [
      Chapter.create!(
        :chapter_number => 1,
        :chapter_image => "Chapter Image",
        :chapter_audio => "Chapter Audio",
        :bible => nil,
        :admin => nil,
        :status => false
      ),
      Chapter.create!(
        :chapter_number => 1,
        :chapter_image => "Chapter Image",
        :chapter_audio => "Chapter Audio",
        :bible => nil,
        :admin => nil,
        :status => false
      )
    ])
  end

  it "renders a list of chapters" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Chapter Image".to_s, :count => 2
    assert_select "tr>td", :text => "Chapter Audio".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
