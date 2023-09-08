class Recipe < ApplicationRecord
  belongs_to :users, class_name: 'User'
  has_many :recipe_foods
  has_many :foods, through: :recipe_foods

  validates :description, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true
end
