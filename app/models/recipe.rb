class Recipe < ApplicationRecord
  belongs_to :users, class_name: "User"
end
