class Recipe < ApplicationRecord
  belongs_to :users, class_name: 'User'

  validates :name, presence: true
  validates :description, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true
end
