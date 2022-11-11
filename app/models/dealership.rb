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
class Dealership < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true
  validates :site, presence: true

end
