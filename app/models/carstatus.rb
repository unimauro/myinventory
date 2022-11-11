# == Schema Information
#
# Table name: carstatuses
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Carstatus < ApplicationRecord

  validates :name, presence: true
 
end
