require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        model: "Model",
        year: 2,
        site: 3,
        dealership: nil,
        carstatus: nil
      ),
      Car.create!(
        model: "Model",
        year: 2,
        site: 3,
        dealership: nil,
        carstatus: nil
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", text: "Model".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
