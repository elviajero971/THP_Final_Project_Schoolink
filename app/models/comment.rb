class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
  belongs_to :user
  
  validates :content, presence: true
end
