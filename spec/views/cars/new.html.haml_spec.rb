require 'rails_helper'

RSpec.describe "cars/new", type: :view do
  before(:each) do
    assign(:car, Car.new(
      model: "MyString",
      year: 1,
      site: 1,
      dealership: nil,
      carstatus: nil
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input[name=?]", "car[model]"

      assert_select "input[name=?]", "car[year]"

      assert_select "input[name=?]", "car[site]"

      assert_select "input[name=?]", "car[dealership_id]"

      assert_select "input[name=?]", "car[carstatus_id]"
    end
  end
end
