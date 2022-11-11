require 'rails_helper'

RSpec.describe "dealerships/index", type: :view do
  before(:each) do
    assign(:dealerships, [
      Dealership.create!(
        name: "Name",
        address: "Address"
      ),
      Dealership.create!(
        name: "Name",
        address: "Address"
      )
    ])
  end

  it "renders a list of dealerships" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
  end
end
