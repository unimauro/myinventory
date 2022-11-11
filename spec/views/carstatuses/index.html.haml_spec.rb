require 'rails_helper'

RSpec.describe "carstatuses/index", type: :view do
  before(:each) do
    assign(:carstatuses, [
      Carstatus.create!(
        name: "Name"
      ),
      Carstatus.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of carstatuses" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
