require 'rails_helper'

RSpec.describe "albums/show", :type => :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :name => "Name",
      :cover => "Cover"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cover/)
  end
end
