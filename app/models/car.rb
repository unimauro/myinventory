class Car < ApplicationRecord
  belongs_to :dealership
  belongs_to :carstatus

  validates :model, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :site, presence: true, numericality: { only_integer: true }

end
