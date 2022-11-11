require 'rails_helper'

RSpec.describe "inventories/edit", type: :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      user: nil,
      car: nil
    ))
  end

  it "renders the edit inventory form" do
    render

    assert_select "form[action=?][method=?]", inventory_path(@inventory), "post" do

      assert_select "input[name=?]", "inventory[user_id]"

      assert_select "input[name=?]", "inventory[car_id]"
    end
  end
end
