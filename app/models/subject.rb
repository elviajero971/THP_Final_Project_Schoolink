class Subject < ApplicationRecord
  before_save :sanitize_content
  belongs_to :user
  has_many :join_fav_subjects, dependent: :destroy
  has_many :join_read_subjects, dependent: :destroy
  has_many :join_validate_subjects, dependent: :destroy
  has_many :comments, as: :commentable
  has_many :modification

  validates :title, presence: true,  length: {maximum: 50}
  validates :content, presence: true, length: {within: 10..10000}
  validates :difficulty, presence: true
  validates :category_id, presence: true

  extend FriendlyId
  friendly_id :title, use: :slugged

  def how_many_fav?
    fav = 0
    JoinFavSubject.all.each do |s|
      if s.subject_id == self.id
        fav += 1
      end
    end
    return fav
  end

  def how_many_comments?
    comment = 0
    Comment.all.each do |com|
      if com.commentable_type == "Subject" && com.commentable_id == self.id 
        comment += 1
        Comment.all.each do |comcom|
          if comcom.commentable_type == "Comment" && comcom.commentable_id == com.id
            comment += 1
          end
        end
      end
    end
    return comment
  end

  def favorites
    favorites = []
    JoinFavSubject.all.each do |fav|
      if fav.subject_id == self.id
        favorites << fav
      end
    end
    return favorites
  end

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end

  def category
    cat = Category.find_by(id: self.category_id)
    return cat.name
  end

  def sanitize_content
    Sanitize.fragment(content, Sanitize::Config::RELAXED)
  end

end
