class Food < ApplicationRecord
  belongs_to :users, class_name: "User"

  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, presence: true
end
