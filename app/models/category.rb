class Category < ApplicationRecord
  has_many :sub_categories
  has_many :subjects, through: :sub_categories

end
