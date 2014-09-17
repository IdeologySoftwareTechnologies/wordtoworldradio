require 'rails_helper'

RSpec.describe "bibles/show", :type => :view do
  before(:each) do
    @bible = assign(:bible, Bible.create!(
      :name => "Name",
      :bible_cover => "Bible Cover",
      :admin => nil,
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Bible Cover/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
