# == Schema Information
#
# Table name: cars
#
#  id            :bigint           not null, primary key
#  model         :string
#  year          :integer
#  site          :integer
#  dealership_id :bigint           not null
#  carstatus_id  :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  price         :float
#
require 'rails_helper'

RSpec.describe Car, type: :model do

  it "is valid with valid attributes" do
    expect(Car.new).to be_valid
  end

end



