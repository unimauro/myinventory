# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Role, type: :model do
  it "is valid with valid attributes" do
    expect(Role.new).to be_valid
  end
end
