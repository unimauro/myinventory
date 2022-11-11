# == Schema Information
#
# Table name: carstatuses
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Carstatus, type: :model do
  it "is valid with valid attributes" do
    expect(Carstatus.new).to be_valid
  end
end
