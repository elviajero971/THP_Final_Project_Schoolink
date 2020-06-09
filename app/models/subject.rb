class Subject < ApplicationRecord
  belongs_to :user
  belongs_to :sub_category
  has_many :user_ratings

  def howManyFav
    fav = 0
    
    return fav
  end

  def usersRating
    rating = 0

    return rating
  end

end
