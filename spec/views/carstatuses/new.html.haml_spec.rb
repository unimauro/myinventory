require 'rails_helper'

RSpec.describe "carstatuses/new", type: :view do
  before(:each) do
    assign(:carstatus, Carstatus.new(
      name: "MyString"
    ))
  end

  it "renders new carstatus form" do
    render

    assert_select "form[action=?][method=?]", carstatuses_path, "post" do

      assert_select "input[name=?]", "carstatus[name]"
    end
  end
end
