class Subject < ApplicationRecord
  belongs_to :user
  has_many :join_fav_subjects, dependent: :delete_all
  has_many :join_read_subjects, dependent: :delete_all
  has_many :join_validate_subjects, dependent: :delete_all
  has_many :user_ratings, dependent: :delete_all


  def howManyFav
    fav = 0
    
    return fav
  end

  def usersRating
    count = self.user_ratings.length
    ratings = 0
    self.user_ratings.each do |r|
      ratings += r.user_rating
    end
    return ((ratings.fdiv(count)).to_f).round(2)
  end

  def category
    subcat = SubCategory.find_by(id: self.sub_category_id)
    return subcat.category.name
  end

  def subcategory
    subcat = SubCategory.find_by(id: self.sub_category_id)
    return subcat.name
  end
end
