require 'rails_helper'

RSpec.describe "inventories/new", type: :view do
  before(:each) do
    assign(:inventory, Inventory.new(
      user: nil,
      car: nil
    ))
  end

  it "renders new inventory form" do
    render

    assert_select "form[action=?][method=?]", inventories_path, "post" do

      assert_select "input[name=?]", "inventory[user_id]"

      assert_select "input[name=?]", "inventory[car_id]"
    end
  end
end
