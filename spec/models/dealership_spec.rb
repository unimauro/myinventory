# == Schema Information
#
# Table name: dealerships
#
#  id         :bigint           not null, primary key
#  name       :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Dealership, type: :model do
  it "is valid with valid attributes" do
    expect(Dealership.new).to be_valid
  end
end
