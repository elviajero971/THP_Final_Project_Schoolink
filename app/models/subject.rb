class Subject < ApplicationRecord
  belongs_to :user
  has_many :join_fav_subjects, dependent: :destroy
  has_many :join_read_subjects, dependent: :destroy
  has_many :join_validate_subjects, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :difficulty, presence: true
  validates :category_id, presence: true

  extend FriendlyId
  friendly_id :title, use: :slugged

  def howManyFav
    fav = 0
    
    return fav
  end

  # def usersRating
  #   count = self.user_ratings.length
  #   ratings = 0
  #   self.user_ratings.each do |r|
  #     ratings += r.user_rating
  #   end
  #   return ((ratings.fdiv(count)).to_f).round(2)
  # end

  def category
    cat = Category.find_by(id: self.category_id)
    return cat.name
  end

  def user_nickname
    user_nickname = User.find_by(id: self.user_id).nickname
  end
  def user_slug
    user_nickname = User.find_by(id: self.user_id).slug
  end
end
