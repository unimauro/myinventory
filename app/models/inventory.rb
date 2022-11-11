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
class Inventory < ApplicationRecord
  belongs_to :user
  belongs_to :car

end
