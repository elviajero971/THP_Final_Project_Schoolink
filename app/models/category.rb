class Category < ApplicationRecord
  has_many :sub_categories
  has_many :subjects, through: :sub_categories

  def subcategories
    my_category = self
    categories = []
    SubCategory.all.each do |subcategories|
      if subcategories.category == self
      categories << subcategories
      end
    end
    return categories
  end

end
