require 'rails_helper'

RSpec.describe "inventories/index", type: :view do
  before(:each) do
    assign(:inventories, [
      Inventory.create!(
        user: nil,
        car: nil
      ),
      Inventory.create!(
        user: nil,
        car: nil
      )
    ])
  end

  it "renders a list of inventories" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
