class Subject < ApplicationRecord
  belongs_to :user
  
  has_many :user_ratings

  validates :title, presence: true, 
                    length: {maximum: 100}

  
  def self.search(search)
    if search
      categories = Category.all
      categories = categories.where(name: search[:name])
      return categories
    else
      Category.all
    end
  end

  def howManyFav
    fav = 0
    
    return fav
  end

  def usersRating
    rating = 0

    return rating
  end

  def category
    cat = self.sub_category.category
    return cat
  end
end
