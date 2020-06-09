class Subject < ApplicationRecord
  belongs_to :user
  belongs_to :sub_category

  def howManyFav
    fav = 0
    
    return fav
  end

end
