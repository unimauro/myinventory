require 'rails_helper'

RSpec.describe "inventories/show", type: :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      user: nil,
      car: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
