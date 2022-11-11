require 'rails_helper'

RSpec.describe "carstatuses/show", type: :view do
  before(:each) do
    @carstatus = assign(:carstatus, Carstatus.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
