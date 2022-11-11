# == Schema Information
#
# Table name: inventories
#
#  id         :bigint           not null, primary key
#  due        :datetime
#  user_id    :bigint           not null
#  car_id     :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Inventory, type: :model do
  it "is valid with valid attributes" do
    expect(Inventory.new).to be_valid
  end
end
