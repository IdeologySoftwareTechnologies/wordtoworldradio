require 'rails_helper'

RSpec.describe "chapters/show", :type => :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :chapter_number => 1,
      :chapter_image => "Chapter Image",
      :chapter_audio => "Chapter Audio",
      :bible => nil,
      :admin => nil,
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Chapter Image/)
    expect(rendered).to match(/Chapter Audio/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
