require 'rails_helper'

RSpec.describe "carstatuses/edit", type: :view do
  before(:each) do
    @carstatus = assign(:carstatus, Carstatus.create!(
      name: "MyString"
    ))
  end

  it "renders the edit carstatus form" do
    render

    assert_select "form[action=?][method=?]", carstatus_path(@carstatus), "post" do

      assert_select "input[name=?]", "carstatus[name]"
    end
  end
end
