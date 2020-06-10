class SubCategory < ApplicationRecord
  belongs_to :category, dependent: :destroy
  has_many :subjects, dependent: :destroy
  
end
